import 'package:flutter/material.dart';
import '../../core/theme.dart';

class BookPreviewScreen extends StatefulWidget {
  const BookPreviewScreen({super.key});

  @override
  State<BookPreviewScreen> createState() => _BookPreviewScreenState();
}

class _BookPreviewScreenState extends State<BookPreviewScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  bool _isPlayingAudio = false;
  bool _darkThemeEnabled = false;

  final List<String> _pages = [
    'assets/images/book_preview_page1_1775354784156.png',
    'assets/images/book_preview_page2_1775354871728.png',
  ];

  void _showAIStudyMode() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Row(
          children: [Icon(Icons.auto_awesome, color: AppTheme.primary), SizedBox(width: 8), Text('AI Study Mode')],
        ),
        content: const Text('Generating a 5-question quiz and key takeaways mock from this chapter...'),
        actions: [TextButton(onPressed: () => Navigator.pop(context), child: const Text('Close'))],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _darkThemeEnabled ? Colors.black : Colors.white,
      appBar: AppBar(
        title: Text('Book Preview', style: TextStyle(color: _darkThemeEnabled ? Colors.white : Colors.black)),
        backgroundColor: _darkThemeEnabled ? Colors.grey.shade900 : Colors.white,
        iconTheme: IconThemeData(color: _darkThemeEnabled ? Colors.white : Colors.black),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.school, color: AppTheme.primary),
            tooltip: 'AI Study Mode',
            onPressed: _showAIStudyMode,
          ),
          IconButton(
            icon: const Icon(Icons.color_lens_outlined),
            tooltip: 'Toggle Theme',
            onPressed: () => setState(() => _darkThemeEnabled = !_darkThemeEnabled),
          ),
          IconButton(
            icon: const Icon(Icons.edit_note),
            tooltip: 'Smart Notes',
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Long press any text to add Smart Notes'))),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 24.0, left: 8),
              child: Text(
                '${_currentPage + 1} / ${_pages.length}',
                style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (index) => setState(() => _currentPage = index),
        itemCount: _pages.length,
        itemBuilder: (context, index) {
          return InteractiveViewer(
            panEnabled: false,
            boundaryMargin: const EdgeInsets.all(20),
            child: Container(
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 20, spreadRadius: 2)]
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(_pages[index], fit: BoxFit.cover, width: double.infinity, height: double.infinity),
              ),
            ),
          );
        },
      ),
      bottomSheet: Container(
         width: double.infinity,
         padding: const EdgeInsets.all(16),
         decoration: BoxDecoration(
           color: _darkThemeEnabled ? Colors.grey.shade800 : Colors.white,
           boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 5, offset: const Offset(0, -2))]
         ),
         child: Row(
           children: [
             CircleAvatar(
               backgroundColor: AppTheme.accent,
               child: IconButton(
                 icon: Icon(_isPlayingAudio ? Icons.pause : Icons.play_arrow, color: AppTheme.primary),
                 onPressed: () => setState(() => _isPlayingAudio = !_isPlayingAudio),
               ),
             ),
             const SizedBox(width: 16),
             Expanded(
               child: Column(
                 mainAxisSize: MainAxisSize.min,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Audio Companion Mode', style: TextStyle(fontWeight: FontWeight.bold, color: _darkThemeEnabled ? Colors.white : Colors.black)),
                   const Text('AI Generated Short Summary...', style: TextStyle(color: Colors.grey, fontSize: 12)),
                   const SizedBox(height: 8),
                   LinearProgressIndicator(value: _isPlayingAudio ? null : 0.0, backgroundColor: Colors.grey.shade200, valueColor: const AlwaysStoppedAnimation<Color>(AppTheme.primary)),
                 ],
               ),
             ),
           ],
         ),
      ),
    );
  }
}
