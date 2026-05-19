import 'package:flutter/material.dart';
import '../../core/theme.dart';
import '../home/home_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  bool _isLoadingChoice = false;

  final List<Map<String, dynamic>> _steps = [
    {
      'title': 'What do you love reading?',
      'options': ['Fiction', 'Self-help', 'Technology', 'Business', 'Academic', 'Biography', 'Fantasy', 'Competitive Exams'],
      'multiSelect': true,
    },
    {
      'title': "What's your goal?",
      'options': ['Learn new skills', 'Entertainment', 'Career growth', 'Academic success'],
      'multiSelect': false,
    },
    {
      'title': 'How often do you read?',
      'options': ['Daily', 'Weekly', 'Occasionally'],
      'multiSelect': false,
    },
    {
      'title': 'Language Preference',
      'options': ['English', 'Hindi', 'Regional languages'],
      'multiSelect': false,
    },
  ];

  final Map<int, List<String>> _selections = {};

  void _nextPage() {
    if (_currentPage < _steps.length - 1) {
      _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    } else {
      _startAIPersonalization();
    }
  }

  void _startAIPersonalization() async {
    setState(() {
      _isLoadingChoice = true;
    });
    // Simulate AI Personalization
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const ReadyScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoadingChoice) {
      return Scaffold(
        backgroundColor: AppTheme.background,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(color: AppTheme.primary),
              const SizedBox(height: 24),
              Text(
                "We're tailoring your experience...",
                style: Theme.of(context).textTheme.titleLarge,
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppTheme.background,
      appBar: AppBar(
        leading: _currentPage > 0 
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => _pageController.previousPage(
                duration: const Duration(milliseconds: 300), curve: Curves.easeInOut),
            )
          : null,
      ),
      body: SafeArea(
        child: Column(
          children: [
            LinearProgressIndicator(
              value: (_currentPage + 1) / _steps.length,
              backgroundColor: AppTheme.primary.withOpacity(0.2),
              valueColor: const AlwaysStoppedAnimation<Color>(AppTheme.primary),
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (index) {
                  setState(() => _currentPage = index);
                },
                itemCount: _steps.length,
                itemBuilder: (context, index) {
                  final step = _steps[index];
                  return Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          step['title'],
                          style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 28),
                        ),
                        const SizedBox(height: 32),
                        Expanded(
                          child: ListView.separated(
                            itemCount: (step['options'] as List).length,
                            separatorBuilder: (_, __) => const SizedBox(height: 12),
                            itemBuilder: (context, optionIndex) {
                              final option = step['options'][optionIndex];
                              final isSelected = (_selections[index] ?? []).contains(option);
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    if (step['multiSelect']) {
                                      _selections[index] ??= [];
                                      if (isSelected) {
                                        _selections[index]!.remove(option);
                                      } else {
                                        _selections[index]!.add(option);
                                      }
                                    } else {
                                      _selections[index] = [option];
                                    }
                                  });
                                },
                                borderRadius: BorderRadius.circular(16),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: isSelected ? AppTheme.primary : Colors.grey.shade300,
                                      width: isSelected ? 2 : 1,
                                    ),
                                    borderRadius: BorderRadius.circular(16),
                                    color: isSelected ? AppTheme.primary.withOpacity(0.05) : Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        option,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                                        ),
                                      ),
                                      if (isSelected)
                                        const Icon(Icons.check_circle, color: AppTheme.primary)
                                      else
                                        const Icon(Icons.circle_outlined, color: Colors.grey),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: ElevatedButton(
                onPressed: (_selections[_currentPage]?.isNotEmpty ?? false) ? _nextPage : null,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(56),
                ),
                child: Text(_currentPage == _steps.length - 1 ? 'Finish' : 'Continue'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ReadyScreen extends StatelessWidget {
  const ReadyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.check_circle_outline, size: 100, color: AppTheme.primary),
              const SizedBox(height: 24),
              Text(
                'Your reading journey is ready',
                style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 28),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const HomeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(56),
                ),
                child: const Text('Enter BookLoom'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
