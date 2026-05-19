import 'package:flutter/material.dart';
import '../../core/theme.dart';
import '../../core/mock_database.dart';
import 'book_preview_screen.dart';

class BookDetailScreen extends StatefulWidget {
  final MockBook? book;
  const BookDetailScreen({super.key, this.book});

  @override
  State<BookDetailScreen> createState() => _BookDetailScreenState();
}

class _BookDetailScreenState extends State<BookDetailScreen> {
  bool _isOfflineSaved = false;
  bool _isWishlisted = false;

  MockBook get _book => widget.book ?? MockData.books[14];

  void _showCompareSheet() {
    // Pick a related book
    final related = MockData.books.firstWhere(
      (b) => b.genre == _book.genre && b.id != _book.id,
      orElse: () => MockData.books[2],
    );
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(width: 40, height: 4, margin: const EdgeInsets.only(bottom: 16), decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(2))),
              const Text('🧠 AI Book Comparison', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(child: _buildCompareCard(_book, highlight: true)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(children: [
                      const Text('VS', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                    ]),
                  ),
                  Expanded(child: _buildCompareCard(related)),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(color: AppTheme.accent, borderRadius: BorderRadius.circular(12)),
                child: Text(
                  '${_book.title} scores higher in depth (${_book.difficulty}) while ${related.title} is more accessible. Both are rated ⭐${_book.rating} vs ⭐${related.rating}.',
                  style: const TextStyle(color: AppTheme.primary, fontSize: 13),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildCompareCard(MockBook book, {bool highlight = false}) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: highlight ? AppTheme.primary : Colors.grey.shade200, width: highlight ? 2 : 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Container(
            height: 100, width: 70,
            decoration: BoxDecoration(color: AppTheme.accent, borderRadius: BorderRadius.circular(8)),
            child: const Icon(Icons.book, color: AppTheme.primary),
          ),
          const SizedBox(height: 8),
          Text(book.title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12), maxLines: 2, textAlign: TextAlign.center),
          Text('★ ${book.rating}', style: const TextStyle(color: Colors.amber, fontSize: 12)),
          Text(book.difficulty, style: const TextStyle(color: Colors.grey, fontSize: 11)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(_isOfflineSaved ? Icons.download_done : Icons.download_for_offline_outlined,
              color: _isOfflineSaved ? Colors.green : Colors.black87),
            onPressed: () {
              setState(() => _isOfflineSaved = !_isOfflineSaved);
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(_isOfflineSaved ? '📥 Saved for offline reading' : 'Removed from offline'),
                behavior: SnackBarBehavior.floating,
              ));
            },
          ),
          IconButton(
            icon: Icon(_isWishlisted ? Icons.favorite : Icons.favorite_border,
              color: _isWishlisted ? Colors.red : Colors.black87),
            onPressed: () {
              setState(() => _isWishlisted = !_isWishlisted);
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(_isWishlisted ? '❤️ Added to Wishlist' : 'Removed from Wishlist'),
                behavior: SnackBarBehavior.floating,
              ));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 180, height: 270,
                decoration: BoxDecoration(
                  color: AppTheme.accent, borderRadius: BorderRadius.circular(16),
                  boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.12), blurRadius: 20, offset: const Offset(0, 10))],
                ),
                child: const Center(child: Icon(Icons.book, size: 72, color: AppTheme.primary)),
              ),
            ),
            const SizedBox(height: 28),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(_book.title, style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 24)),
                      const SizedBox(height: 6),
                      Text('By ${_book.author}', style: const TextStyle(fontSize: 15, color: Colors.grey)),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  children: [
                    Row(children: [
                      const Icon(Icons.star, color: Colors.amber, size: 18),
                      const SizedBox(width: 4),
                      Text('${_book.rating}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    ]),
                    const SizedBox(height: 4),
                    Text('\$${_book.price.toStringAsFixed(2)}', style: const TextStyle(color: AppTheme.primary, fontWeight: FontWeight.bold, fontSize: 16)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 12),
            // Chips row
            Row(
              children: [
                _buildTag(_book.genre, AppTheme.accent, AppTheme.primary),
                const SizedBox(width: 8),
                _buildTag(_book.difficulty, Colors.amber.shade50, Colors.orange.shade800),
                const SizedBox(width: 8),
                _buildTag('${_book.pages} pp', Colors.grey.shade100, Colors.grey),
                if (_book.isAudioAvailable) ...[
                  const SizedBox(width: 8),
                  _buildTag('🎧 Audio', const Color(0xFFF0FFF4), const Color(0xFF1B7C3D)),
                ]
              ],
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: AppTheme.primary, side: const BorderSide(color: AppTheme.primary),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                    ),
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const BookPreviewScreen())),
                    icon: const Icon(Icons.auto_awesome, size: 16),
                    label: const Text('Try Preview'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 14)),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('🛒 "${_book.title}" added to cart!'),
                        behavior: SnackBarBehavior.floating,
                      ));
                    },
                    child: Text('Add — \$${_book.price.toStringAsFixed(2)}'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: TextButton.icon(
                onPressed: _showCompareSheet,
                icon: const Icon(Icons.compare_arrows, color: AppTheme.primary, size: 18),
                label: const Text('Compare with a similar book', style: TextStyle(color: AppTheme.primary)),
              ),
            ),
            const SizedBox(height: 24),
            const Text('About this book', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(_book.description, style: const TextStyle(height: 1.7, color: Colors.black87, fontSize: 14)),
            const SizedBox(height: 24),
            const Text('Community Reviews', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            ..._buildReviews(),
          ],
        ),
      ),
    );
  }

  Widget _buildTag(String text, Color bg, Color fg) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(color: bg, borderRadius: BorderRadius.circular(8)),
      child: Text(text, style: TextStyle(color: fg, fontSize: 11, fontWeight: FontWeight.bold)),
    );
  }

  List<Widget> _buildReviews() {
    final reviews = [
      ['Rahul K.', 'A must read for every book lover. Elegant and thought-provoking.', '5'],
      ['Priya M.', 'Loved every page. The writing style is beautiful and immersive.', '4'],
      ['Arjun V.', 'Great insight and very well structured. Highly recommend!', '5'],
    ];
    return reviews.map((r) => Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: AppTheme.primary,
            radius: 18,
            child: Text(r[0][0], style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Text(r[0], style: const TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(width: 8),
                  Row(children: List.generate(int.parse(r[2]), (_) => const Icon(Icons.star, color: Colors.amber, size: 14))),
                ]),
                const SizedBox(height: 4),
                Text(r[1], style: const TextStyle(color: Colors.black87, fontSize: 13)),
              ],
            ),
          ),
        ],
      ),
    )).toList();
  }
}
