import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traver/screens/authentication/login/login.dart';

class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({super.key});

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _skipToEnd() {
    _pageController.animateToPage(
      2,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  void _nextPage() {
    // Debugging log
    print("Current Page Index: $_pageIndex");

    if (_pageIndex == 2) {
      // Navigate to the LoginScreen
      print("Navigating to LoginScreen");
      Get.to(() => const LoginScreen());
    } else {
      // Navigate to the next page
      print("Navigating to Page ${_pageIndex + 1}");
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> demoData = [
      {
        "image": 'assets/onboarding_screens/onboarding_1.png',
        "title": 'Take to New Adventure',
        "subtitle": 'Get ready to explore the world like never before.',
      },
      {
        "image": 'assets/onboarding_screens/onboarding_2.png',
        "title": 'Plan Your Adventure',
        "subtitle": 'Organize your trip effortlessly',
      },
      {
        "image": 'assets/onboarding_screens/onboarding_3.png',
        "title": 'Start Exploring',
        "subtitle": 'Let’s start your AdventureAdept journey',
      }
    ];

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 5,
                    child: PageView(
                      controller: _pageController,
                      onPageChanged: (index) {
                        setState(() {
                          _pageIndex = index;
                        });
                      },
                      children: demoData.map((data) {
                        return OnboardingScreen(
                          image: data['image']!,
                          title: data['title']!,
                          subtitle: data['subtitle']!,
                        );
                      }).toList(),
                    ),
                  ),
                  Row(
                    children: [
                      ...List.generate(
                        demoData.length,
                        (index) => Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: dotIndicator(isActive: index == _pageIndex),
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            backgroundColor: const Color(0xFF51D779),
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: _nextPage,
                          child: const Icon(
                            Icons.arrow_forward,
                            size: 28,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 16,
              right: 16,
              child: TextButton(
                onPressed: _skipToEnd,
                child: const Text(
                  "Skip",
                  style: TextStyle(
                    color: Color(0xFF51D779),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class dotIndicator extends StatelessWidget {
  const dotIndicator({
    super.key,
    this.isActive = false,
  });
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isActive ? 12 : 4,
      width: 4,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF51D779) : Colors.grey,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          image,
          height: 250,
        ),
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Text(
          subtitle,
          style: const TextStyle(color: Colors.grey),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
