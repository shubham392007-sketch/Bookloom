import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  static final AppState _instance = AppState._internal();
  factory AppState() => _instance;
  AppState._internal();

  String userName = "Guest";
  bool isPremium = false;
  int streakCount = 12;
  String readingDNA = "Curious Explorer";
  
  // Analytics
  int booksCompleted = 4;
  int timeSpentReading = 128; // in minutes

  void setUserName(String name) {
    if (name.isNotEmpty) {
      userName = name;
      notifyListeners();
    }
  }

  void togglePremium() {
    isPremium = !isPremium;
    notifyListeners();
  }

  void updateDNA(String dna) {
    readingDNA = dna;
    notifyListeners();
  }
}
