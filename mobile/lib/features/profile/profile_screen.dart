import 'package:flutter/material.dart';
import '../../core/theme.dart';
import '../../core/app_state.dart';
import 'settings_screen.dart';
import 'community_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      appBar: AppBar(title: const Text('Profile')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: AnimatedBuilder(
          animation: AppState(),
          builder: (context, _) {
            return Column(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: AppTheme.primary,
                  child: Icon(Icons.person, size: 50, color: Colors.white),
                ),
                const SizedBox(height: 16),
                Text(AppState().userName, style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 24)),
                const Text('alex@bookloom.local', style: TextStyle(color: Colors.grey)),
                if(AppState().isPremium) const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Chip(
                    backgroundColor: Colors.amber, 
                    label: Text('Premium Member', style: TextStyle(fontWeight: FontWeight.bold))
                  ),
                ),
                const SizedBox(height: 32),

                // Reading Insights Dashboard
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(16),
                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, 5))]
                  ),
                  child: Column(
                    children: [
                      const Text('Reading Insights', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildStatColumn('${AppState().timeSpentReading}m', 'Read Time'),
                          _buildStatColumn('${AppState().booksCompleted}', 'Books Finished'),
                          _buildStatColumn('Top 5%', 'Global Rank'),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                
                if(!AppState().isPremium) _buildSubscriptionBanner(context),
                if(!AppState().isPremium) const SizedBox(height: 24),

                _buildListItem(context, Icons.group_outlined, 'Book Circles (Community)', onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CommunityScreen()))),
                _buildListItem(context, Icons.shopping_bag_outlined, 'My Orders'),
                _buildListItem(context, Icons.tune, 'Reading Preferences'),
                const Divider(height: 32),
                _buildListItem(context, Icons.settings_outlined, 'Settings', onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const SettingsScreen()))),
                _buildListItem(context, Icons.help_outline, 'Help & Support'),
                _buildListItem(context, Icons.logout, 'Log Out', color: Colors.red),
              ],
            );
          }
        ),
      ),
    );
  }

  Widget _buildSubscriptionBanner(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppTheme.primary, borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Unlock BookLoom Premium 💎', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
          const SizedBox(height: 8),
          const Text('Get unlimited free previews, audio companions, and offline mode.', style: TextStyle(color: Colors.white70)),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white, foregroundColor: AppTheme.primary),
                  onPressed: () => AppState().togglePremium(),
                  child: const Text('₹199 / mo'),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(side: const BorderSide(color: Colors.white), foregroundColor: Colors.white),
                  onPressed: () => AppState().togglePremium(),
                  child: const Text('₹499 / mo (Pro)'),
                ),
              ),
            ],
          )
        ],
      )
    );
  }

  Widget _buildStatColumn(String val, String label) {
    return Column(
      children: [
        Text(val, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: AppTheme.primary)),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 12)),
      ],
    );
  }

  Widget _buildListItem(BuildContext context, IconData icon, String title, {Color? color, VoidCallback? onTap}) {
    return ListTile(
      leading: Icon(icon, color: color ?? AppTheme.textMain),
      title: Text(title, style: TextStyle(color: color ?? AppTheme.textMain, fontWeight: FontWeight.w600)),
      trailing: const Icon(Icons.chevron_right, color: Colors.grey),
      onTap: onTap ?? () {},
    );
  }
}
