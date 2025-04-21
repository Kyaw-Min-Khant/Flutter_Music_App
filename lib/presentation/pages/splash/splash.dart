import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_testing/core/configs/assets/app_vectors.dart';
import 'package:flutter_testing/presentation/intro/pages/getStarted.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    redirect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: SvgPicture.asset(AppVectors.logo)));
  }

  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 5));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (BuildContext context) => const Getstarted()),
    );
  }
}
