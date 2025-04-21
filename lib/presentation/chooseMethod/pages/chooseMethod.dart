import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_testing/common/widgets/buttons/basic_app_button.dart';
import 'package:flutter_testing/core/configs/assets/app_images.dart';
import 'package:flutter_testing/core/configs/assets/app_vectors.dart';
import 'package:flutter_testing/core/configs/themes/app_color.dart';
import 'package:flutter_testing/presentation/auth/pages/signuporsignin.dart';
import 'package:flutter_testing/presentation/chooseMethod/bloc/theme_cubit.dart';

class ChooseMethod extends StatelessWidget {
  const ChooseMethod({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(40),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.chooseMethod),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo),
                ),
                Spacer(),
                Text(
                  'Choose Mode',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.read<ThemeCubit>().updateTheme(
                              ThemeMode.light,
                            );
                          },
                          child: ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff30393C).withOpacity(0.5),
                                ),
                                child: SvgPicture.asset(
                                  AppVectors.sunLogo,
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Light Mode',
                          style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.read<ThemeCubit>().updateTheme(
                              ThemeMode.dark,
                            );
                          },
                          child: ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff30393C).withOpacity(0.5),
                                ),
                                child: SvgPicture.asset(
                                  AppVectors.moonLogo,
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Dark Mode',
                          style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40),
                BasicAppButton(
                  onPressed:
                      () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUporSignInPage(),
                          ),
                        ),
                      },
                  title: "Continue",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
