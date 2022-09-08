import 'package:flutter/material.dart';
import 'package:free_hand_ui/constants/routes_names.dart';
import 'package:lottie/lottie.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  AnimationController? _controller;
  String splashScreenAnimation = 'assets/free_hand.json';

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(duration: const Duration(seconds: 5), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Lottie.asset(splashScreenAnimation,
          height: MediaQuery.of(context).size.height * 1,
          fit: BoxFit.cover,
          controller: _controller,
          animate: true, onLoaded: (compositon) {
        _controller
          ?..duration = compositon.duration
          ..forward().whenComplete(() => Navigator.of(context)
              .pushNamedAndRemoveUntil(
                  RoutesNames.onBoardingRoute, (route) => false));
      }),
    );
  }
}
