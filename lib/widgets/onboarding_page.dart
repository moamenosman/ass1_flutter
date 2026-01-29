import 'package:flutter/material.dart';
import 'package:ass1_flutter/resources/app_text_styles.dart';
import 'package:ass1_flutter/resources/app_color.dart';

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: _getCirclePosition(image)['top'],
          right: _getCirclePosition(image)['right'],
          left: _getCirclePosition(image)['left'],
          child: Container(
            width: 481,
            height: 481,
            decoration: BoxDecoration(
              color: AppColor.YellowColor,
              shape: BoxShape.circle,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                height: 280,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 50),

              Text(
                title,
                style: AppTextStyles.grayColor40Bold,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              Text(
                description,
                style: AppTextStyles.BlackColor16Regular,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Map<String, double?> _getCirclePosition(String imagePath) {
    if (imagePath.contains('onboarding1')) {
      return {'top': -50.0, 'right': -240.0, 'left': null};
    } else if (imagePath.contains('onboarding2')) {
      return {'top': -75.0, 'right': 175, 'left': null};
      // onboarding3
    } else {
      return {'top': -160.0, 'right': -35.0, 'left': null};
    }
  }
}