import 'package:flutter/material.dart';
import 'package:quickserve/auth/choose_sign.dart';
import 'package:quickserve/library/flutter_overboard/overboard.dart';
import 'package:quickserve/models/onboarding/page_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final _pageList = [
    PageModel(
        color: Colors.white,
        imageAssetPath: 'assets/onboarding/fast_delivery.png',
        title: 'Fast ',
        highlightTitle: 'Delivery',
        body: 'Tracking Your Delivery On The Go',
        doAnimateImage: true),
    PageModel(
        color: Colors.white,
        imageAssetPath: 'assets/onboarding/lady_.png',
        title: 'Easy To ',
        highlightTitle: 'Use',
        body: 'Get all you need at your own convenience',
        doAnimateImage: true),
  ];

  @override
  void initState() {
    super.initState();
  }

  // if user click finish, you won't see this page again until you clear your data of this apps in your phone setting
  void _finishOnboarding() async {
    final SharedPreferences _pref = await SharedPreferences.getInstance();
    await _pref.setBool('onBoarding', false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OverBoard(
        pages: _pageList,
        showBullets: true,
        finishCallback: () {
          _finishOnboarding();

          // after you click finish, direct to signin page
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const ChooseSign()),
              (Route<dynamic> route) => false);
        },
      ),
    );
  }
}
