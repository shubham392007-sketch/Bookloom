import 'package:flutter/material.dart';
import '../../core/theme.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool pushNotifications = true;
  bool emailUpdates = false;
  bool dataSaver = true;
  bool darkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        padding: const EdgeInsets.all(24.0),
        children: [
          const Text('Preferences', style: TextStyle(fontWeight: FontWeight.bold, color: AppTheme.primary, fontSize: 16)),
          const SizedBox(height: 16),
          SwitchListTile(
            title: const Text('Dark Theme'),
            subtitle: const Text('Enable dark mode for the entire app'),
            value: darkTheme,
            activeColor: AppTheme.primary,
            onChanged: (val) => setState(() => darkTheme = val),
          ),
          SwitchListTile(
            title: const Text('Data Saver'),
            subtitle: const Text('Load lower quality book covers to save data'),
            value: dataSaver,
            activeColor: AppTheme.primary,
            onChanged: (val) => setState(() => dataSaver = val),
          ),
          const Divider(height: 32),
          const Text('Notifications', style: TextStyle(fontWeight: FontWeight.bold, color: AppTheme.primary, fontSize: 16)),
          const SizedBox(height: 16),
          SwitchListTile(
            title: const Text('Push Notifications'),
            subtitle: const Text('Get alerts for daily AI selections and community updates'),
            value: pushNotifications,
            activeColor: AppTheme.primary,
            onChanged: (val) => setState(() => pushNotifications = val),
          ),
          SwitchListTile(
            title: const Text('Email Updates'),
            subtitle: const Text('Receive weekly newsletters of trending books'),
            value: emailUpdates,
            activeColor: AppTheme.primary,
            onChanged: (val) => setState(() => emailUpdates = val),
          ),
        ],
      ),
    );
  }
}
