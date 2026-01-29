import 'package:flutter/material.dart';
import 'package:ass1_flutter/resources/app_images.dart';
import 'package:ass1_flutter/resources/app_color.dart';
import 'package:ass1_flutter/resources/app_text_styles.dart';
import 'package:ass1_flutter/widgets/onboarding_page.dart';
import 'package:ass1_flutter/models/page_ui_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<PageUiModel> _pages = [
    PageUiModel(
      image: AppImages.onboarding1,
      title: 'Practice Mindfulness',
      description: 'Get on the right track towards mindfulness',
    ),
    PageUiModel(
      image: AppImages.onboarding2,
      title: 'Get started with Yoga',
      description: 'Easily get started with your yoga journey',
    ),
    PageUiModel(
      image: AppImages.onboarding3,
      title: 'Unplug your life',
      description: 'Set up different measures to start with your life',
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.PrimaryColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),

            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _pages.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  return OnboardingPage(
                    image: _pages[index].image,
                    title: _pages[index].title,
                    description: _pages[index].description,
                  );
                },
              ),
            ),

            if (_currentPage < _pages.length - 1)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        _pageController.jumpToPage(_pages.length - 1);
                      },
                      child: Text(
                        'Skip',
                        style: AppTextStyles.buttonStyle,
                      ),
                    ),
                    Row(
                      children: List.generate(
                        _pages.length,
                            (index) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentPage == index
                                ? AppColor.GreyColor
                                : Colors.transparent,
                            border: Border.all(
                              color: AppColor.GreyColor,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Text(
                        'Next',
                        style: AppTextStyles.buttonStyle,
                      ),
                    ),
                  ],
                ),
              )
            else
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      print('Get Started!');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.GreyColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      'Get Started',
                      style: AppTextStyles.PrimaryColorRegular,
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