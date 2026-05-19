import 'package:flutter/material.dart';
import '../../core/theme.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  String selectedTag = 'All';
  bool isEmpty = true;

  @override
  Widget build(BuildContext context) {
    if (isEmpty) {
      return Scaffold(
        backgroundColor: AppTheme.background,
        appBar: AppBar(title: const Text('Wishlist')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.favorite_border, size: 80, color: Colors.grey.shade300),
              const SizedBox(height: 16),
              const Text('No books saved yet', style: TextStyle(fontSize: 18, color: AppTheme.textSecondary)),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  setState(() => isEmpty = false);
                },
                child: const Text('Discover Books'),
              )
            ],
          ),
        ),
      );
    }
    return Scaffold(
      backgroundColor: AppTheme.background,
      appBar: AppBar(title: const Text('Wishlist')),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: ['All', 'Read Later', 'Must Buy', 'Fiction'].map((tag) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: ChoiceChip(
                        label: Text(tag),
                        selected: selectedTag == tag,
                        onSelected: (val) {
                          if (val) setState(() => selectedTag = tag);
                        },
                        selectedColor: AppTheme.primary.withValues(alpha: 0.2),
                        labelStyle: TextStyle(color: selectedTag == tag ? AppTheme.primary : AppTheme.textSecondary),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 24,
                  childAspectRatio: 0.58,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: AppTheme.accent.withValues(alpha: 0.5),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: const Center(child: Icon(Icons.book, size: 40, color: Colors.grey)),
                            ),
                            Positioned(
                              top: 8,
                              right: 8,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 16,
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  icon: const Icon(Icons.favorite, color: Colors.red, size: 16),
                                  onPressed: () {},
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(color: Colors.blue.shade50, borderRadius: BorderRadius.circular(4)),
                        child: const Text('Read Later', style: TextStyle(fontSize: 10, color: Colors.blue)),
                      ),
                      const SizedBox(height: 4),
                      const Text('Saved Book Title', style: TextStyle(fontWeight: FontWeight.bold), maxLines: 1),
                      const Text('Author Name', style: TextStyle(color: Colors.grey, fontSize: 12)),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
