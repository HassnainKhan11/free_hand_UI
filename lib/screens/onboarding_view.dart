import 'package:flutter/material.dart';
import 'package:free_hand_ui/constants/constants.dart';
import 'package:free_hand_ui/constants/routes_names.dart';
import 'package:free_hand_ui/models/onboarding.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: PageView.builder(
              itemCount: onboardingItem.length,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, i) {
                return Column(
                  children: [
                    ShaderMask(
                      shaderCallback: (rect) {
                        return const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.black, Colors.transparent],
                        ).createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height));
                      },
                      blendMode: BlendMode.dstIn,
                      child: Image.network(
                        onboardingItem[i].image_url,
                        height: 430,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            onboardingItem[i].title,
                            style: const TextStyle(
                                color: AppColors.secondaryColor,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            child: Text(
                              onboardingItem[i].text,
                              style: const TextStyle(
                                  color: AppColors.textColor, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              onboardingItem.length,
              (index) => buildDot(index),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 28, left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      RoutesNames.homeRoute, (route) => false);
                },
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.secondaryColor,
                  ),
                  child: const Center(
                    child: Text('Get Started',
                        style: TextStyle(
                            fontSize: 18, color: AppColors.primaryColor)),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Already have an account?'),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Log In',
                    style: TextStyle(
                        color: AppColors.secondaryColor,
                        fontWeight: FontWeight.w600),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }

  Container buildDot(int index) {
    return Container(
      height: currentIndex == index ? 12 : 8,
      width: currentIndex == index ? 12 : 8,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: currentIndex == index
            ? AppColors.secondaryColor
            : AppColors.textColor,
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
