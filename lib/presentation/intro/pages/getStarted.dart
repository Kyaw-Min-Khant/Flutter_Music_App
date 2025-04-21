import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_testing/common/widgets/buttons/basic_app_button.dart';
import 'package:flutter_testing/core/configs/assets/app_images.dart';
import 'package:flutter_testing/core/configs/assets/app_vectors.dart';
import 'package:flutter_testing/core/configs/themes/app_color.dart';
import 'package:flutter_testing/presentation/chooseMethod/pages/chooseMethod.dart';

class Getstarted extends StatelessWidget {
  const Getstarted({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(40),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.getStarted),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Container(color: Colors.black.withOpacity(0.15)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo),
                ),
                Spacer(),
                Text(
                  'Enjoy Listening to Music',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  'Millions of songs to listen to and enjoy. Try it Now,it\'s free. Testing 123',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                BasicAppButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ChooseMethod(),
                      ),
                    );
                  },
                  title: "Get Started",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
