import 'package:flutter/material.dart';
import '../../core/theme.dart';
import '../../core/mock_database.dart';
import '../book/book_detail_screen.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class SearchScreen extends StatefulWidget {
  final String? initialGenre;
  const SearchScreen({super.key, this.initialGenre});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  late stt.SpeechToText _speech;
  bool _isListening = false;
  String _query = '';
  String? _selectedGenre;
  String _sortBy = 'Relevance';

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
    _selectedGenre = widget.initialGenre;
    if (widget.initialGenre != null) {
      _query = widget.initialGenre!;
      _searchController.text = widget.initialGenre!;
    }
  }

  void _listen() async {
    if (!_isListening) {
      bool available = await _speech.initialize();
      if (available) {
        setState(() => _isListening = true);
        _speech.listen(onResult: (val) {
          setState(() {
            _searchController.text = val.recognizedWords;
            _query = val.recognizedWords;
          });
        });
      }
    } else {
      setState(() => _isListening = false);
      _speech.stop();
    }
  }

  void _applyGoal(String goal) {
    setState(() {
      _searchController.text = goal;
      _query = goal;
      _selectedGenre = null;
    });
  }

  List<MockBook> get _filteredBooks {
    String q = _query.toLowerCase();

    // Goal-based shortcuts
    if (q.contains('upsc') || q.contains('civil service')) return MockData.bundles['UPSC Essentials'] ?? [];
    if (q.contains('startup')) return MockData.bundles['Startup Starter Pack'] ?? [];
    if (q.contains('ai') || q.contains('artificial intelligence')) return MockData.bundles['Beginner in AI'] ?? [];
    if (q.contains('mindful') || q.contains('calm')) return MockData.bundles['Mindfulness & Growth'] ?? [];
    if (q.contains('improve communication') || q.contains('communication')) {
      return MockData.books.where((b) => b.genre == 'Self-Help').toList();
    }

    // Genre filter
    if (_selectedGenre != null && _query.isEmpty) {
      return MockData.getByGenre(_selectedGenre!);
    }

    var results = MockData.search(q);
    if (_selectedGenre != null) results = results.where((b) => b.genre == _selectedGenre).toList();

    // Sort
    if (_sortBy == 'Price: Low to High') results.sort((a, b) => a.price.compareTo(b.price));
    if (_sortBy == 'Highest Rated') results.sort((a, b) => b.rating.compareTo(a.rating));
    if (_sortBy == 'Newest') results = results.reversed.toList();

    return results;
  }

  void _showFilters() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      builder: (context) {
        return StatefulBuilder(builder: (context, setM) => Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(width: 40, height: 4, margin: const EdgeInsets.only(bottom: 16), decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(2))),
              Text('Filters', style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 20),
              const Text('Sort By', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Wrap(spacing: 8, children: ['Relevance', 'Highest Rated', 'Price: Low to High', 'Newest'].map((s) =>
                ChoiceChip(label: Text(s), selected: _sortBy == s, onSelected: (_) {
                  setM(() => _sortBy = s);
                  setState(() => _sortBy = s);
                }),
              ).toList()),
              const SizedBox(height: 20),
              const Text('Genre', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Wrap(spacing: 8, children: ['Fiction', 'Business', 'Sci-Fi', 'Philosophy', 'Finance', 'Self-Help', 'Thriller', 'Biography', 'Academic'].map((g) =>
                ChoiceChip(label: Text(g), selected: _selectedGenre == g, onSelected: (_) {
                  setM(() => _selectedGenre = _selectedGenre == g ? null : g);
                  setState(() => _selectedGenre = _selectedGenre == g ? null : g);
                }),
              ).toList()),
              const SizedBox(height: 20),
              SizedBox(width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Apply Filters'),
                )),
            ],
          ),
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final results = _filteredBooks;
    final showEmpty = results.isEmpty && (_query.isNotEmpty || _selectedGenre != null);

    return Scaffold(
      backgroundColor: AppTheme.background,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search bar
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 12),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _searchController,
                      onChanged: (val) => setState(() { _query = val; _selectedGenre = null; }),
                      decoration: InputDecoration(
                        hintText: 'Search 50+ books...',
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (_query.isNotEmpty)
                              IconButton(icon: const Icon(Icons.clear, size: 18), onPressed: () => setState(() { _query = ''; _searchController.clear(); })),
                            IconButton(
                              icon: Icon(_isListening ? Icons.mic : Icons.mic_none, color: _isListening ? AppTheme.primary : Colors.grey),
                              onPressed: _listen,
                            ),
                          ],
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 0),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    decoration: BoxDecoration(color: AppTheme.primary, borderRadius: BorderRadius.circular(14)),
                    child: IconButton(icon: const Icon(Icons.tune, color: Colors.white), onPressed: _showFilters),
                  )
                ],
              ),
            ),

            // Goal chips
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(children: [
                _buildGoalChip('🎯 Crack UPSC', 'Crack UPSC'),
                _buildGoalChip('🚀 Build Startup', 'Build Startup'),
                _buildGoalChip('💬 Communication', 'Improve Communication'),
                _buildGoalChip('🧘 Mindfulness', 'Mindfulness'),
                _buildGoalChip('🤖 Learn AI', 'AI'),
              ]),
            ),
            const SizedBox(height: 12),

            // Result count
            if (!showEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text('${results.length} books found', style: const TextStyle(color: Colors.grey, fontSize: 13)),
              ),

            const SizedBox(height: 12),

            Expanded(
              child: showEmpty
                ? Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Icon(Icons.search_off, size: 80, color: Colors.grey.shade300),
                    const SizedBox(height: 16),
                    const Text('No books found', style: TextStyle(fontSize: 18, color: AppTheme.textSecondary)),
                    const SizedBox(height: 8),
                    const Text('Try a different search or goal', style: TextStyle(color: Colors.grey)),
                  ]))
                : GridView.builder(
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 100),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, crossAxisSpacing: 14, mainAxisSpacing: 20, childAspectRatio: 0.57,
                    ),
                    itemCount: results.length,
                    itemBuilder: (context, index) {
                      final book = results[index];
                      return GestureDetector(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => BookDetailScreen(book: book))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppTheme.accent.withValues(alpha: 0.5),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Stack(children: [
                                  const Center(child: Icon(Icons.book, size: 40, color: Colors.grey)),
                                  if (book.isAudioAvailable)
                                    Positioned(top: 8, right: 8,
                                      child: Container(
                                        padding: const EdgeInsets.all(4),
                                        decoration: BoxDecoration(color: AppTheme.primary, borderRadius: BorderRadius.circular(6)),
                                        child: const Icon(Icons.headset, size: 12, color: Colors.white),
                                      )),
                                ]),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(book.title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13), maxLines: 1, overflow: TextOverflow.ellipsis),
                            Text(book.author, style: const TextStyle(color: Colors.grey, fontSize: 11)),
                            Row(children: [
                              const Icon(Icons.star, size: 11, color: Colors.amber),
                              Text(' ${book.rating}   ', style: const TextStyle(fontSize: 11, color: Colors.grey)),
                              Text('\$${book.price.toStringAsFixed(2)}', style: const TextStyle(fontSize: 11, color: AppTheme.primary, fontWeight: FontWeight.bold)),
                            ]),
                          ],
                        ),
                      );
                    },
                  ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.black87,
        onPressed: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('📷 Scanning book cover... (Smart Scan Mode)'), behavior: SnackBarBehavior.floating)),
        icon: const Icon(Icons.document_scanner, color: Colors.white),
        label: const Text('Smart Scan', style: TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget _buildGoalChip(String label, String query) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: ActionChip(
        backgroundColor: Colors.white,
        side: const BorderSide(color: AppTheme.accent),
        label: Text(label, style: const TextStyle(color: AppTheme.primary, fontSize: 12)),
        onPressed: () => _applyGoal(query),
      ),
    );
  }
}
