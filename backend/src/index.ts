import express from 'express';
import cors from 'cors';
import { PrismaClient } from '@prisma/client';
import dotenv from 'dotenv';
import bcrypt from 'bcrypt';
import jwt from 'jsonwebtoken';

dotenv.config();

const app = express();
const prisma = new PrismaClient();
const port = process.env.PORT || 3000;
const JWT_SECRET = process.env.JWT_SECRET || 'super_secret_key';

app.use(cors());
app.use(express.json());

// Auth Middleware
const authenticate = (req: any, res: any, next: any) => {
  const authHeader = req.headers.authorization;
  if (!authHeader) return res.status(401).json({ error: 'No token provided' });
  const token = authHeader.split(' ')[1];
  try {
    const payload = jwt.verify(token, JWT_SECRET);
    req.user = payload;
    next();
  } catch (err) {
    return res.status(401).json({ error: 'Invalid token' });
  }
};

app.get('/api/health', (req, res) => {
  res.json({ status: 'OK', message: 'BookLoom API is running' });
});

// --- Auth APIs ---
app.post('/api/auth/signup', async (req, res) => {
  try {
    const { email, password, name } = req.body;
    const existing = await prisma.user.findUnique({ where: { email } });
    if (existing) return res.status(400).json({ error: 'Email already in use' });

    const hashedPassword = await bcrypt.hash(password, 10);
    const user = await prisma.user.create({
      data: { email, password: hashedPassword, name }
    });

    const token = jwt.sign({ userId: user.id }, JWT_SECRET, { expiresIn: '7d' });
    res.json({ token, user: { id: user.id, email: user.email, name: user.name } });
  } catch (error) {
    res.status(500).json({ error: 'Internal server error' });
  }
});

app.post('/api/auth/login', async (req, res) => {
  try {
    const { email, password } = req.body;
    const user = await prisma.user.findUnique({ where: { email } });
    if (!user) return res.status(404).json({ error: 'User not found' });

    const valid = await bcrypt.compare(password, user.password);
    if (!valid) return res.status(401).json({ error: 'Invalid credentials' });

    const token = jwt.sign({ userId: user.id }, JWT_SECRET, { expiresIn: '7d' });
    res.json({ token, user: { id: user.id, email: user.email, name: user.name } });
  } catch (error) {
    res.status(500).json({ error: 'Internal server error' });
  }
});

// --- Book & Category APIs ---
app.get('/api/books', async (req, res) => {
  try {
    const books = await prisma.book.findMany();
    res.json(books);
  } catch (error) {
    res.status(500).json({ error: 'Failed to fetch books' });
  }
});

app.get('/api/books/:id', async (req, res) => {
  try {
    const book = await prisma.book.findUnique({ where: { id: req.params.id } });
    if (!book) return res.status(404).json({ error: 'Book not found' });
    res.json(book);
  } catch (error) {
    res.status(500).json({ error: 'Failed to fetch book' });
  }
});

app.get('/api/categories', async (req, res) => {
  try {
    const categoriesInfo = await prisma.book.findMany({
      select: { category: true },
      distinct: ['category'],
    });
    const categories = categoriesInfo.map(c => c.category);
    res.json(categories);
  } catch (error) {
    res.status(500).json({ error: 'Failed to fetch categories' });
  }
});

// --- User Preferences APIs ---
app.get('/api/preferences', authenticate, async (req: any, res: any) => {
  try {
    let prefs = await prisma.userPreference.findUnique({ where: { userId: req.user.userId } });
    if (!prefs) {
      prefs = await prisma.userPreference.create({
        data: { userId: req.user.userId, interests: [] }
      });
    }
    res.json(prefs);
  } catch (error) {
    res.status(500).json({ error: 'Failed to fetch preferences' });
  }
});

app.put('/api/preferences', authenticate, async (req: any, res: any) => {
  try {
    const { interests, goal, frequency, language } = req.body;
    const prefs = await prisma.userPreference.upsert({
      where: { userId: req.user.userId },
      update: { interests, goal, frequency, language },
      create: { userId: req.user.userId, interests, goal, frequency, language }
    });
    res.json(prefs);
  } catch (error) {
    res.status(500).json({ error: 'Failed to update preferences' });
  }
});

// --- AI Mood & Quick Actions (Mocked) ---
app.get('/api/books/mood/:mood', async (req, res) => {
  try {
    const { mood } = req.params;
    // Mocked subset of books matching mood
    const books = await prisma.book.findMany({ take: 5 });
    res.json(books);
  } catch (error) {
    res.status(500).json({ error: 'Failed to fetch mood books' });
  }
});

// --- Community Features ---
app.post('/api/books/:id/reviews', authenticate, async (req: any, res: any) => {
  try {
    const { content, rating } = req.body;
    const review = await prisma.review.create({
      data: {
        userId: req.user.userId,
        bookId: req.params.id,
        content,
        rating
      }
    });
    res.json(review);
  } catch (error) {
    res.status(500).json({ error: 'Failed to post review' });
  }
});

app.get('/api/books/:id/reviews', async (req, res) => {
  try {
    const reviews = await prisma.review.findMany({
      where: { bookId: req.params.id },
      include: { user: { select: { name: true } } }
    });
    res.json(reviews);
  } catch (error) {
    res.status(500).json({ error: 'Failed to fetch reviews' });
  }
});

// --- Reading Tracker API ---
app.get('/api/progress', authenticate, async (req: any, res: any) => {
  try {
    const progress = await prisma.readingProgress.findMany({
      where: { userId: req.user.userId },
      include: { book: true }
    });
    res.json(progress);
  } catch (error) {
    res.status(500).json({ error: 'Failed to fetch reading progress' });
  }
});

app.post('/api/progress/:bookId', authenticate, async (req: any, res: any) => {
  try {
    const { percentage, status } = req.body;
    const progress = await prisma.readingProgress.upsert({
      where: { userId_bookId: { userId: req.user.userId, bookId: req.params.bookId } },
      update: { percentage, status },
      create: { userId: req.user.userId, bookId: req.params.bookId, percentage, status }
    });
    res.json(progress);
  } catch (error) {
    res.status(500).json({ error: 'Failed to update reading progress' });
  }
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
