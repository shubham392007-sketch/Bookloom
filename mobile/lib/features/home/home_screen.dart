import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../../core/theme.dart';
import '../../core/app_state.dart';
import '../../core/mock_database.dart';
import '../search/search_screen.dart';
import '../book/book_detail_screen.dart';
import '../cart/cart_screen.dart';
import '../profile/profile_screen.dart';
import '../wishlist/wishlist_screen.dart';
import '../ai/ai_assistant_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeView(),
    const SearchScreen(),
    const WishlistScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _pages),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppTheme.primary,
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const AIAssistantScreen())),
        child: const Icon(Icons.auto_awesome, color: Colors.white),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppTheme.primary,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), activeIcon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined), activeIcon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), activeIcon: Icon(Icons.favorite), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), activeIcon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), activeIcon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isLoading = true;
  String selectedMood = 'Relaxed';

  static const Map<String, String> _moodGenre = {
    'Relaxed': 'Philosophy',
    'Motivated': 'Self-Help',
    'Curious': 'Technology',
    'Romantic': 'Romance',
    'Thrilled': 'Thriller',
  };

  List<MockBook> get _moodBooks {
    String genre = _moodGenre[selectedMood] ?? 'Philosophy';
    return MockData.getByGenre(genre).take(6).toList();
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1400), () {
      if (mounted) setState(() => isLoading = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 80),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  _buildHeader(context),
                  const SizedBox(height: 28),
                  if (isLoading) _buildSkeletonHero() else _buildDailySuggestionCard(context),
                  const SizedBox(height: 28),

                  // Mood Chips
                  const Text('What are you in the mood for?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 12),
                  _buildMoodChips(),
                  const SizedBox(height: 28),

                  // Books for mood
                  _buildSectionTitle(context, 'Handpicked — ${selectedMood} Reads'),
                  const SizedBox(height: 16),
                  if (isLoading) _buildSkeletonList() else _buildHorizontalBooks(_moodBooks),
                  const SizedBox(height: 28),

                  // Smart Bundles
                  _buildSectionTitle(context, 'Smart Book Bundles 📦'),
                  const SizedBox(height: 16),
                  _buildBundlesList(),
                  const SizedBox(height: 28),

                  // Guided Paths
                  _buildSectionTitle(context, 'Guided Reading Paths 🧭'),
                  const SizedBox(height: 16),
                  _buildReadingPaths(),
                  const SizedBox(height: 28),

                  // Expert lists
                  _buildSectionTitle(context, 'Expert Recommendations 🧑‍🏫'),
                  const SizedBox(height: 16),
                  _buildExpertLists(),
                  const SizedBox(height: 28),

                  // Trending locally  
                  _buildSectionTitle(context, 'Trending in Pune 🔥'),
                  const SizedBox(height: 16),
                  if (isLoading) _buildSkeletonList() else _buildHorizontalBooks(MockData.books.reversed.take(6).toList()),
                  const SizedBox(height: 28),

                  // New Arrivals
                  _buildSectionTitle(context, 'New Arrivals'),
                  const SizedBox(height: 16),
                  if (isLoading) _buildSkeletonList() else _buildHorizontalBooks(MockData.getByGenre('Biography')),
                  const SizedBox(height: 28),

                  // Browse Genres
                  _buildSectionTitle(context, 'Browse Genres'),
                  const SizedBox(height: 16),
                  _buildCategoriesGrid(),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ── Header ──────────────────────────────────────────────────────────────────
  Widget _buildHeader(BuildContext context) {
    return AnimatedBuilder(
      animation: AppState(),
      builder: (context, _) {
        final hour = DateTime.now().hour;
        final greeting = hour < 12 ? 'Good Morning' : hour < 17 ? 'Good Afternoon' : 'Good Evening';
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$greeting, ${AppState().userName} 👋',
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 22),
                    maxLines: 1, overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      const Icon(Icons.local_fire_department, color: Colors.orange, size: 16),
                      const SizedBox(width: 4),
                      Text('${AppState().streakCount} Day Streak', style: TextStyle(color: Colors.orange.shade700, fontWeight: FontWeight.bold, fontSize: 13)),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(color: AppTheme.accent, borderRadius: BorderRadius.circular(8)),
                        child: Text('🧠 ${AppState().readingDNA}', style: const TextStyle(color: AppTheme.primary, fontSize: 11, fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            GestureDetector(
              onTap: () {},
              child: const CircleAvatar(
                backgroundColor: AppTheme.accent,
                radius: 24,
                child: Icon(Icons.person, color: AppTheme.primary),
              ),
            ),
          ],
        );
      },
    );
  }

  // ── Mood Chips ───────────────────────────────────────────────────────────────
  Widget _buildMoodChips() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: _moodGenre.keys.map((mood) {
          final selected = selectedMood == mood;
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ChoiceChip(
              label: Text(mood),
              selected: selected,
              onSelected: (val) {
                if (val) {
                  setState(() { selectedMood = mood; isLoading = true; });
                  Future.delayed(const Duration(milliseconds: 700), () {
                    if (mounted) setState(() => isLoading = false);
                  });
                }
              },
              selectedColor: AppTheme.primary.withValues(alpha: 0.15),
              labelStyle: TextStyle(color: selected ? AppTheme.primary : AppTheme.textSecondary, fontWeight: selected ? FontWeight.bold : FontWeight.normal),
            ),
          );
        }).toList(),
      ),
    );
  }

  // ── Skeleton loaders ─────────────────────────────────────────────────────────
  Widget _buildSkeletonHero() {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300, highlightColor: Colors.grey.shade100,
      child: Container(height: 190, decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(24))),
    );
  }

  Widget _buildSkeletonList() {
    return SizedBox(
      height: 240,
      child: ListView.separated(
        scrollDirection: Axis.horizontal, itemCount: 4,
        separatorBuilder: (_, __) => const SizedBox(width: 16),
        itemBuilder: (_, __) => Shimmer.fromColors(
          baseColor: Colors.grey.shade300, highlightColor: Colors.grey.shade100,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(height: 190, width: 140, decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16))),
            const SizedBox(height: 8), Container(height: 14, width: 100, color: Colors.white),
            const SizedBox(height: 4), Container(height: 12, width: 80, color: Colors.white),
          ]),
        ),
      ),
    );
  }

  // ── AI Daily Card ─────────────────────────────────────────────────────────────
  Widget _buildDailySuggestionCard(BuildContext context) {
    final book = MockData.books[14]; // The Architecture of Stillness
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight,
          colors: [AppTheme.primary, const Color(0xFF7C85E8)]),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  const Icon(Icons.auto_awesome, color: Colors.white, size: 18),
                  const SizedBox(width: 8),
                  Text('AI Pick of the Day', style: TextStyle(color: Colors.white.withValues(alpha: 0.9), fontWeight: FontWeight.bold)),
                ]),
                const SizedBox(height: 10),
                Text(book.title, style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600)),
                const SizedBox(height: 4),
                Text('Because you loved "The Flow State"', style: TextStyle(color: Colors.white.withValues(alpha: 0.8), fontSize: 12)),
                const SizedBox(height: 14),
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const BookDetailScreen())),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
                    child: const Text('Read Sample', style: TextStyle(color: AppTheme.primary, fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Container(
            width: 75, height: 110,
            decoration: BoxDecoration(color: AppTheme.accent, borderRadius: BorderRadius.circular(8)),
            child: const Icon(Icons.book, color: AppTheme.primary, size: 36),
          ),
        ],
      ),
    );
  }

  // ── Section Title ─────────────────────────────────────────────────────────────
  Widget _buildSectionTitle(BuildContext context, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 18)),
        const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.grey),
      ],
    );
  }

  // ── Horizontal Book List ──────────────────────────────────────────────────────
  Widget _buildHorizontalBooks(List<MockBook> books) {
    if (books.isEmpty) {
      return SizedBox(
        height: 100,
        child: Center(child: Text('No books available for this mood', style: TextStyle(color: Colors.grey.shade400))),
      );
    }
    return SizedBox(
      height: 240,
      child: ListView.separated(
        scrollDirection: Axis.horizontal, itemCount: books.length,
        separatorBuilder: (_, __) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          final book = books[index];
          return GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => BookDetailScreen(book: book))),
            child: SizedBox(
              width: 136,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 185,
                    decoration: BoxDecoration(
                      color: AppTheme.accent.withValues(alpha: 0.55),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Stack(
                      children: [
                        const Center(child: Icon(Icons.book, size: 38, color: Colors.grey)),
                        if (book.isAudioAvailable)
                          Positioned(top: 8, right: 8,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(color: AppTheme.primary, borderRadius: BorderRadius.circular(6)),
                              child: const Icon(Icons.headset, size: 12, color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(book.title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13), maxLines: 1, overflow: TextOverflow.ellipsis),
                  Text(book.author, style: const TextStyle(color: Colors.grey, fontSize: 11)),
                  Row(children: [
                    const Icon(Icons.star, size: 12, color: Colors.amber),
                    const SizedBox(width: 2),
                    Text('${book.rating}', style: const TextStyle(fontSize: 11, color: Colors.grey)),
                    const SizedBox(width: 6),
                    Text('\$${book.price.toStringAsFixed(2)}', style: const TextStyle(fontSize: 11, color: AppTheme.primary, fontWeight: FontWeight.bold)),
                  ]),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // ── Bundles ───────────────────────────────────────────────────────────────────
  Widget _buildBundlesList() {
    return SizedBox(
      height: 110,
      child: ListView.separated(
        scrollDirection: Axis.horizontal, itemCount: MockData.bundles.length,
        separatorBuilder: (_, __) => const SizedBox(width: 14),
        itemBuilder: (context, index) {
          final key = MockData.bundles.keys.elementAt(index);
          final bks = MockData.bundles[key]!;
          return Container(
            width: 240,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: AppTheme.primary.withValues(alpha: 0.2)),
              borderRadius: BorderRadius.circular(16), color: Colors.white,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(key, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                      const SizedBox(height: 4),
                      Text('${bks.length} books', style: const TextStyle(color: Colors.grey, fontSize: 12)),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(color: AppTheme.accent, shape: BoxShape.circle),
                  child: const Icon(Icons.add_shopping_cart, color: AppTheme.primary, size: 16),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  // ── Reading Paths ──────────────────────────────────────────────────────────────
  Widget _buildReadingPaths() {
    return Column(
      children: MockData.readingPaths.map((path) {
        final progress = (path['progress'] as double);
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFFF0F2FF), borderRadius: BorderRadius.circular(16)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(path['title'] as String, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: AppTheme.primary)),
                const SizedBox(height: 4),
                Text(path['description'] as String, style: const TextStyle(color: Colors.black54, fontSize: 12)),
                const SizedBox(height: 12),
                LinearProgressIndicator(
                  value: progress, minHeight: 6,
                  backgroundColor: Colors.white,
                  valueColor: const AlwaysStoppedAnimation<Color>(AppTheme.primary),
                  borderRadius: BorderRadius.circular(4),
                ),
                const SizedBox(height: 6),
                Text('${(progress * 100).round()}% complete', style: const TextStyle(color: Colors.grey, fontSize: 11)),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  // ── Expert Lists ──────────────────────────────────────────────────────────────
  Widget _buildExpertLists() {
    return Column(
      children: MockData.expertLists.map((e) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(14),
              border: Border.all(color: Colors.grey.shade100)),
            child: Row(
              children: [
                const CircleAvatar(backgroundColor: AppTheme.accent, radius: 22, child: Icon(Icons.person, color: AppTheme.primary)),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(e['name']!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                      const SizedBox(height: 4),
                      Text(e['books']!, style: const TextStyle(color: Colors.grey, fontSize: 11), maxLines: 2, overflow: TextOverflow.ellipsis),
                    ],
                  ),
                ),
                const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.grey),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  // ── Genre Grid ─────────────────────────────────────────────────────────────────
  Widget _buildCategoriesGrid() {
    final categories = [
      {'name': 'Fiction', 'bg': const Color(0xFFF0F2FF), 'fg': const Color(0xFF404DBE)},
      {'name': 'Business', 'bg': const Color(0xFFFFF8F0), 'fg': const Color(0xFF874A00)},
      {'name': 'Philosophy', 'bg': const Color(0xFFF6F0FF), 'fg': const Color(0xFF5A189A)},
      {'name': 'Sci-Fi', 'bg': const Color(0xFFF0FBFF), 'fg': const Color(0xFF0077B6)},
      {'name': 'Finance', 'bg': const Color(0xFFF0FFF4), 'fg': const Color(0xFF1B7C3D)},
      {'name': 'Biography', 'bg': const Color(0xFFFFF0F0), 'fg': const Color(0xFF9B2335)},
    ];
    return GridView.builder(
      shrinkWrap: true, physics: const NeverScrollableScrollPhysics(),
      itemCount: categories.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, crossAxisSpacing: 14, mainAxisSpacing: 14, childAspectRatio: 2.6,
      ),
      itemBuilder: (context, index) {
        final cat = categories[index];
        return GestureDetector(
          onTap: () => Navigator.push(context, MaterialPageRoute(
            builder: (_) => SearchScreen(initialGenre: cat['name'] as String))),
          child: Container(
            decoration: BoxDecoration(color: cat['bg'] as Color, borderRadius: BorderRadius.circular(14)),
            child: Center(child: Text(cat['name'] as String, style: TextStyle(color: cat['fg'] as Color, fontWeight: FontWeight.bold))),
          ),
        );
      },
    );
  }
}
