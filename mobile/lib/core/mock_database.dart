import 'mock_books_part_a.dart';
import 'mock_books_part_b.dart';
import 'mock_books_part_c.dart';

class MockBook {
  final String id;
  final String title;
  final String author;
  final String description;
  final String genre;
  final double rating;
  final double price;
  final bool isAudioAvailable;
  final int pages;
  final String difficulty; // Beginner / Intermediate / Advanced

  const MockBook({
    required this.id,
    required this.title,
    required this.author,
    required this.description,
    required this.genre,
    required this.rating,
    required this.price,
    this.isAudioAvailable = false,
    this.pages = 300,
    this.difficulty = 'Intermediate',
  });
}

class MockData {
  // ── Base 50 books ────────────────────────────────────────────────────────────
  static const List<MockBook> _baseBooks = [
    // Business & Startups
    MockBook(id:'1', title:'The Lean Startup',author:'Eric Ries',description:'How constant innovation creates radically successful businesses.',genre:'Business',rating:4.8,price:15.99,isAudioAvailable:true,pages:336,difficulty:'Intermediate'),
    MockBook(id:'2', title:'Zero to One',author:'Peter Thiel',description:'Notes on startups, or how to build the future.',genre:'Business',rating:4.7,price:18.00,isAudioAvailable:false,pages:224,difficulty:'Intermediate'),
    MockBook(id:'3', title:'Good to Great',author:'Jim Collins',description:'Why some companies make the leap and others don\'t.',genre:'Business',rating:4.6,price:20.00,isAudioAvailable:true,pages:320,difficulty:'Intermediate'),
    MockBook(id:'4', title:'Deep Work',author:'Cal Newport',description:'Rules for focused success in a distracted world.',genre:'Business',rating:4.6,price:22.50,isAudioAvailable:false,pages:296,difficulty:'Beginner'),
    MockBook(id:'5', title:'Rework',author:'Jason Fried',description:'A different kind of business book — simple, direct, and full of insight.',genre:'Business',rating:4.4,price:14.00,isAudioAvailable:false,pages:288,difficulty:'Beginner'),
    // Finance
    MockBook(id:'6', title:'The Psychology of Money',author:'Morgan Housel',description:'Timeless lessons on wealth, greed, and happiness.',genre:'Finance',rating:4.9,price:19.99,isAudioAvailable:true,pages:256,difficulty:'Beginner'),
    MockBook(id:'7', title:'Rich Dad Poor Dad',author:'Robert Kiyosaki',description:'What the rich teach their kids about money.',genre:'Finance',rating:4.5,price:12.00,isAudioAvailable:true,pages:336,difficulty:'Beginner'),
    MockBook(id:'8', title:'The Intelligent Investor',author:'Benjamin Graham',description:'The definitive book on value investing.',genre:'Finance',rating:4.7,price:28.00,isAudioAvailable:false,pages:640,difficulty:'Advanced'),
    MockBook(id:'9', title:'Think and Grow Rich',author:'Napoleon Hill',description:'The classic manifesto for personal achievement.',genre:'Finance',rating:4.6,price:11.00,isAudioAvailable:true,pages:320,difficulty:'Beginner'),
    // Self-Help
    MockBook(id:'10',title:'Atomic Habits',author:'James Clear',description:'An easy & proven way to build good habits & break bad ones.',genre:'Self-Help',rating:4.9,price:20.00,isAudioAvailable:true,pages:320,difficulty:'Beginner'),
    MockBook(id:'11',title:'The 7 Habits of Highly Effective People',author:'Stephen Covey',description:'Principles of fairness, integrity, honesty, and human dignity.',genre:'Self-Help',rating:4.8,price:18.00,isAudioAvailable:true,pages:432,difficulty:'Intermediate'),
    MockBook(id:'12',title:'Can\'t Hurt Me',author:'David Goggins',description:'Master your mind and defy the odds.',genre:'Self-Help',rating:4.8,price:22.00,isAudioAvailable:true,pages:364,difficulty:'Intermediate'),
    MockBook(id:'13',title:'The Subtle Art of Not Giving a F*ck',author:'Mark Manson',description:'A counterintuitive approach to living a good life.',genre:'Self-Help',rating:4.5,price:17.00,isAudioAvailable:true,pages:224,difficulty:'Beginner'),
    // Philosophy
    MockBook(id:'14',title:'Meditations',author:'Marcus Aurelius',description:'Stoic philosophy for modern life.',genre:'Philosophy',rating:4.7,price:12.00,isAudioAvailable:true,pages:256,difficulty:'Intermediate'),
    MockBook(id:'15',title:'The Architecture of Stillness',author:'Elena Vance',description:'A brilliant exploration of modern life and the tranquility found in pages.',genre:'Philosophy',rating:4.8,price:24.00,isAudioAvailable:true,pages:228,difficulty:'Beginner'),
    MockBook(id:'16',title:'Man\'s Search for Meaning',author:'Viktor Frankl',description:'A psychiatrist\'s memoir of life in Nazi concentration camps.',genre:'Philosophy',rating:4.9,price:13.00,isAudioAvailable:false,pages:200,difficulty:'Beginner'),
    MockBook(id:'17',title:'The Republic',author:'Plato',description:'The foundational text of Western political philosophy.',genre:'Philosophy',rating:4.5,price:10.00,isAudioAvailable:false,pages:384,difficulty:'Advanced'),
    // History
    MockBook(id:'18',title:'Sapiens',author:'Yuval Noah Harari',description:'A brief history of humankind.',genre:'History',rating:4.8,price:25.00,isAudioAvailable:true,pages:464,difficulty:'Beginner'),
    MockBook(id:'19',title:'Homo Deus',author:'Yuval Noah Harari',description:'A brief history of tomorrow.',genre:'History',rating:4.5,price:23.00,isAudioAvailable:true,pages:464,difficulty:'Intermediate'),
    MockBook(id:'20',title:'The Power of Now',author:'Eckhart Tolle',description:'A guide to spiritual enlightenment.',genre:'Philosophy',rating:4.6,price:16.00,isAudioAvailable:true,pages:229,difficulty:'Beginner'),
    // Technology
    MockBook(id:'21',title:'Superintelligence',author:'Nick Bostrom',description:'Paths, dangers, strategies for AI futures.',genre:'Technology',rating:4.4,price:21.00,isAudioAvailable:false,pages:352,difficulty:'Advanced'),
    MockBook(id:'22',title:'The Lean Machine',author:'Dantar Oosterwal',description:'Revolutionary lean product development at Harley-Davidson.',genre:'Technology',rating:4.3,price:19.00,isAudioAvailable:false,pages:272,difficulty:'Intermediate'),
    MockBook(id:'23',title:'Life 3.0',author:'Max Tegmark',description:'Being human in the age of Artificial Intelligence.',genre:'Technology',rating:4.5,price:22.00,isAudioAvailable:true,pages:384,difficulty:'Intermediate'),
    MockBook(id:'24',title:'The Code Breaker',author:'Walter Isaacson',description:'Jennifer Doudna, gene editing, and the future of the human race.',genre:'Technology',rating:4.6,price:26.00,isAudioAvailable:true,pages:560,difficulty:'Intermediate'),
    MockBook(id:'25',title:'Digital Minimalism',author:'Cal Newport',description:'Choosing a focused life in a noisy world.',genre:'Technology',rating:4.5,price:18.00,isAudioAvailable:true,pages:302,difficulty:'Beginner'),
    // Sci-Fi
    MockBook(id:'26',title:'Dune',author:'Frank Herbert',description:'Epic science fiction masterpiece — interstellar politics and ecology.',genre:'Sci-Fi',rating:4.9,price:29.99,isAudioAvailable:true,pages:896,difficulty:'Advanced'),
    MockBook(id:'27',title:'Project Hail Mary',author:'Andy Weir',description:'A lone astronaut must save the earth from disaster.',genre:'Sci-Fi',rating:4.8,price:26.00,isAudioAvailable:true,pages:496,difficulty:'Intermediate'),
    MockBook(id:'28',title:'Foundation',author:'Isaac Asimov',description:'The classic saga of the fall and rise of a galactic empire.',genre:'Sci-Fi',rating:4.7,price:15.00,isAudioAvailable:false,pages:244,difficulty:'Intermediate'),
    MockBook(id:'29',title:'Ender\'s Game',author:'Orson Scott Card',description:'The Earth is under attack and one genius child might save us all.',genre:'Sci-Fi',rating:4.7,price:14.00,isAudioAvailable:true,pages:352,difficulty:'Intermediate'),
    MockBook(id:'30',title:'The Martian',author:'Andy Weir',description:'An astronaut must improvise to survive alone on Mars.',genre:'Sci-Fi',rating:4.8,price:18.00,isAudioAvailable:true,pages:384,difficulty:'Beginner'),
    // Fiction
    MockBook(id:'31',title:'The Midnight Library',author:'Matt Haig',description:'Between life and death there is a library.',genre:'Fiction',rating:4.5,price:18.50,isAudioAvailable:true,pages:304,difficulty:'Beginner'),
    MockBook(id:'32',title:'The Alchemist',author:'Paulo Coelho',description:'A mystical story of Santiago on his journey to find treasure.',genre:'Fiction',rating:4.7,price:13.00,isAudioAvailable:true,pages:208,difficulty:'Beginner'),
    MockBook(id:'33',title:'Ikigai',author:'Héctor García',description:'The Japanese secret to a long and happy life.',genre:'Fiction',rating:4.6,price:17.00,isAudioAvailable:true,pages:208,difficulty:'Beginner'),
    MockBook(id:'34',title:'The Shadow of the Wind',author:'Carlos Ruiz Zafón',description:'A post-war Barcelona mystery that blends romance and thriller.',genre:'Fiction',rating:4.6,price:19.00,isAudioAvailable:false,pages:512,difficulty:'Intermediate'),
    MockBook(id:'35',title:'A Man Called Ove',author:'Fredrik Backman',description:'A story about a grumpy old man who changes a neighborhood.',genre:'Fiction',rating:4.6,price:16.00,isAudioAvailable:true,pages:337,difficulty:'Beginner'),
    // Academic / UPSC
    MockBook(id:'36',title:'India\'s Struggle for Independence',author:'Bipan Chandra',description:'Comprehensive account of Indian independence movement.',genre:'Academic',rating:4.7,price:18.00,isAudioAvailable:false,pages:588,difficulty:'Intermediate'),
    MockBook(id:'37',title:'Indian Polity',author:'M Laxmikanth',description:'Essential reading for UPSC Civil Services candidates.',genre:'Academic',rating:4.8,price:22.00,isAudioAvailable:false,pages:850,difficulty:'Advanced'),
    MockBook(id:'38',title:'Certificate Physical Geography',author:'G.C. Leong',description:'Standard textbook on physical geography for competitive exams.',genre:'Academic',rating:4.6,price:20.00,isAudioAvailable:false,pages:558,difficulty:'Intermediate'),
    // Romance
    MockBook(id:'39',title:'The Notebook',author:'Nicholas Sparks',description:'A timeless love story spanning decades.',genre:'Romance',rating:4.5,price:14.00,isAudioAvailable:true,pages:214,difficulty:'Beginner'),
    MockBook(id:'40',title:'Me Before You',author:'Jojo Moyes',description:'A love story that will stay with you forever.',genre:'Romance',rating:4.6,price:15.00,isAudioAvailable:true,pages:369,difficulty:'Beginner'),
    // Thriller
    MockBook(id:'41',title:'The Silent Patient',author:'Alex Michaelides',description:'A famous painter shoots her husband and then never speaks again.',genre:'Thriller',rating:4.6,price:20.00,isAudioAvailable:true,pages:336,difficulty:'Beginner'),
    MockBook(id:'42',title:'Gone Girl',author:'Gillian Flynn',description:'On a warm summer morning in Missouri a wife disappears.',genre:'Thriller',rating:4.5,price:18.00,isAudioAvailable:true,pages:432,difficulty:'Intermediate'),
    MockBook(id:'43',title:'The Da Vinci Code',author:'Dan Brown',description:'A Harvard professor unravels a 2,000-year old conspiracy.',genre:'Thriller',rating:4.4,price:17.00,isAudioAvailable:true,pages:480,difficulty:'Beginner'),
    // Health
    MockBook(id:'44',title:'Why We Sleep',author:'Matthew Walker',description:'Unlocking the power of sleep and dreams.',genre:'Health',rating:4.7,price:21.00,isAudioAvailable:true,pages:360,difficulty:'Beginner'),
    MockBook(id:'45',title:'Thinking, Fast and Slow',author:'Daniel Kahneman',description:'Two systems that drive the way we think.',genre:'Health',rating:4.7,price:24.00,isAudioAvailable:false,pages:499,difficulty:'Advanced'),
    // Biography
    MockBook(id:'46',title:'Steve Jobs',author:'Walter Isaacson',description:'The exclusive biography of the greatest innovator of our age.',genre:'Biography',rating:4.7,price:28.00,isAudioAvailable:true,pages:656,difficulty:'Intermediate'),
    MockBook(id:'47',title:'Elon Musk',author:'Walter Isaacson',description:'The story of the world\'s most daring entrepreneur.',genre:'Biography',rating:4.6,price:32.00,isAudioAvailable:true,pages:688,difficulty:'Intermediate'),
    MockBook(id:'48',title:'Shoe Dog',author:'Phil Knight',description:'A memoir by the creator of Nike.',genre:'Biography',rating:4.8,price:22.00,isAudioAvailable:true,pages:400,difficulty:'Beginner'),
    MockBook(id:'49',title:'Long Walk to Freedom',author:'Nelson Mandela',description:'The autobiography of Nelson Mandela.',genre:'Biography',rating:4.8,price:26.00,isAudioAvailable:true,pages:656,difficulty:'Intermediate'),
    MockBook(id:'50',title:'Wings of Fire',author:'A.P.J. Abdul Kalam',description:'Autobiography of the Missile Man of India.',genre:'Biography',rating:4.9,price:12.00,isAudioAvailable:true,pages:196,difficulty:'Beginner'),
  ];

  /// Combined master list — 510+ books
  static List<MockBook> get books => [
    ..._baseBooks,
    ...booksPartA,
    ...booksPartB,
    ...booksPartC,
  ];

  // ── Bundles ──────────────────────────────────────────────────────────────────
  static const Map<String, List<MockBook>> bundles = {
    'Startup Starter Pack': [
      MockBook(id:'1', title:'The Lean Startup',author:'Eric Ries',description:'Constant innovation for successful businesses.',genre:'Business',rating:4.8,price:15.99,isAudioAvailable:true),
      MockBook(id:'2', title:'Zero to One',author:'Peter Thiel',description:'Notes on startups, or how to build the future.',genre:'Business',rating:4.7,price:18.00),
      MockBook(id:'5', title:'Rework',author:'Jason Fried',description:'A different kind of business book.',genre:'Business',rating:4.4,price:14.00),
    ],
    'UPSC Essentials': [
      MockBook(id:'18',title:'Sapiens',author:'Yuval N. Harari',description:'A brief history of humankind.',genre:'History',rating:4.8,price:25.00),
      MockBook(id:'36',title:'India\'s Struggle for Independence',author:'Bipan Chandra',description:'Comprehensive account of Indian independence.',genre:'Academic',rating:4.7,price:18.00),
      MockBook(id:'37',title:'Indian Polity',author:'M Laxmikanth',description:'Essential reading for UPSC candidates.',genre:'Academic',rating:4.8,price:22.00),
    ],
    'Beginner in AI': [
      MockBook(id:'23',title:'Life 3.0',author:'Max Tegmark',description:'Being human in the age of Artificial Intelligence.',genre:'Technology',rating:4.5,price:22.00,isAudioAvailable:true),
      MockBook(id:'21',title:'Superintelligence',author:'Nick Bostrom',description:'Paths, dangers, strategies for AI futures.',genre:'Technology',rating:4.4,price:21.00),
    ],
    'Mindfulness & Growth': [
      MockBook(id:'10',title:'Atomic Habits',author:'James Clear',description:'Build good habits & break bad ones.',genre:'Self-Help',rating:4.9,price:20.00,isAudioAvailable:true),
      MockBook(id:'14',title:'Meditations',author:'Marcus Aurelius',description:'Stoic philosophy for modern life.',genre:'Philosophy',rating:4.7,price:12.00,isAudioAvailable:true),
      MockBook(id:'6', title:'The Psychology of Money',author:'Morgan Housel',description:'Timeless lessons on wealth, greed, happiness.',genre:'Finance',rating:4.9,price:19.99,isAudioAvailable:true),
    ],
    'Indian Epic Reads': [
      MockBook(id:'446',title:'The Immortals of Meluha',author:'Amish Tripathi',description:'The story of Shiva — a warrior chief who becomes a god.',genre:'Fantasy',rating:4.6,price:13.00,isAudioAvailable:true),
      MockBook(id:'449',title:'Ajaya: Roll of the Dice',author:'Anand Neelakantan',description:'The Mahabharata war from Duryodhana\'s perspective.',genre:'Fantasy',rating:4.5,price:15.00),
      MockBook(id:'50',title:'Wings of Fire',author:'A.P.J. Abdul Kalam',description:'Autobiography of the Missile Man of India.',genre:'Biography',rating:4.9,price:12.00,isAudioAvailable:true),
    ],
  };

  // ── Reading Paths ─────────────────────────────────────────────────────────────
  static const List<Map<String, dynamic>> readingPaths = [
    {'title':'Mastering Artificial Intelligence','description':'A curated journey from basics to advanced AI.','progress':0.30,'books':['Life 3.0','Superintelligence','The Code Breaker']},
    {'title':'The Founding Mindset','description':'Go from idea to product to company.','progress':0.0,'books':['The Lean Startup','Zero to One','Shoe Dog']},
    {'title':'Calm & Philosophical Mind','description':'Read stoics, philosophers, and modern thinkers.','progress':0.75,'books':['Meditations','Man\'s Search for Meaning','The Architecture of Stillness']},
    {'title':'Indian History & Culture','description':'Understand the soul of Bharat through literature.','progress':0.15,'books':['Sapiens','India\'s Struggle for Independence','Discovery of India']},
    {'title':'Master of Thrillers','description':'Jaw-dropping mystery and suspense from the best authors.','progress':0.50,'books':['The Silent Patient','Gone Girl','The Girl with the Dragon Tattoo']},
  ];

  // ── Expert Lists ──────────────────────────────────────────────────────────────
  static const List<Map<String, String>> expertLists = [
    {'name':'Recommended by Kunal Shah','books':'The Psychology of Money, Zero to One, Sapiens'},
    {'name':'Top Picks by IIT Professors','books':'Thinking Fast and Slow, Deep Work, Life 3.0'},
    {'name':'Naval Ravikant\'s Must-Reads','books':'Meditations, The Almanack of Naval Ravikant, Antifragile'},
    {'name':'Elon Musk\'s Reading List','books':'The Foundation Trilogy, Superintelligence, Life 3.0'},
    {'name':'Bill Gates Recommends','books':'The Better Angels of Our Nature, Why We Sleep, Sapiens'},
  ];

  // ── Helper Methods ────────────────────────────────────────────────────────────
  static List<MockBook> getByGenre(String genre) =>
      books.where((b) => b.genre == genre).toList();

  static List<MockBook> search(String query) {
    if (query.isEmpty) return books;
    final q = query.toLowerCase();
    return books.where((b) =>
        b.title.toLowerCase().contains(q) ||
        b.author.toLowerCase().contains(q) ||
        b.genre.toLowerCase().contains(q) ||
        b.description.toLowerCase().contains(q)).toList();
  }

  static List<String> get genres => books.map((b) => b.genre).toSet().toList()..sort();
}
