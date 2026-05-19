import 'package:flutter/material.dart';
import '../../core/theme.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      appBar: AppBar(title: const Text('Book Circles')),
      body: ListView(
        padding: const EdgeInsets.all(24.0),
        children: [
          const Text('Your Active Circles', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          const SizedBox(height: 24),
          _buildCircleCard(
            title: 'Philosophers of Pune',
            book: 'The Architecture of Stillness',
            members: 142,
            activeNow: 12,
            isJoined: true
          ),
          const SizedBox(height: 16),
          _buildCircleCard(
            title: 'Startup Builders',
            book: 'Zero to One',
            members: 580,
            activeNow: 45,
            isJoined: true
          ),
          const SizedBox(height: 32),
          const Text('Trending Nationwide', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          const SizedBox(height: 24),
          _buildCircleCard(
            title: 'Sci-Fi Enthusiasts',
            book: 'Dune',
            members: 12500,
            activeNow: 300,
            isJoined: false
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: AppTheme.primary,
        onPressed: () {},
        icon: const Icon(Icons.add, color: Colors.white),
        label: const Text('Start Circle', style: TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget _buildCircleCard({required String title, required String book, required int members, required int activeNow, required bool isJoined}) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              if(isJoined) const Icon(Icons.check_circle, color: Colors.green, size: 20)
            ],
          ),
          const SizedBox(height: 8),
          Text('Currently Reading: $book', style: const TextStyle(color: AppTheme.primary)),
          const SizedBox(height: 16),
          Row(
            children: [
              const Icon(Icons.group, size: 16, color: Colors.grey),
              const SizedBox(width: 4),
              Text('$members Members', style: const TextStyle(color: Colors.grey, fontSize: 12)),
              const SizedBox(width: 16),
              const Icon(Icons.circle, size: 10, color: Colors.green),
              const SizedBox(width: 4),
              Text('$activeNow Active', style: const TextStyle(color: Colors.grey, fontSize: 12)),
            ],
          ),
          const SizedBox(height: 16),
          if(!isJoined) SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {},
              child: const Text('Join Circle'),
            ),
          )
        ],
      ),
    );
  }
}
