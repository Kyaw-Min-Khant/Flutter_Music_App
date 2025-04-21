import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_testing/common/helpers/is_dark_mode.dart';
import 'package:flutter_testing/common/widgets/appbar/basic_appbar.dart';
import 'package:flutter_testing/common/widgets/buttons/basic_app_button.dart';
import 'package:flutter_testing/core/configs/assets/app_images.dart';
import 'package:flutter_testing/core/configs/assets/app_vectors.dart';
import 'package:flutter_testing/presentation/auth/pages/signup.dart';
// import 'package:flutter_testing/core/configs/themes/app_color.dart';

class SignUporSignInPage extends StatelessWidget {
  const SignUporSignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppVectors.bottomLogo),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(AppVectors.topLogo),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(AppImages.authBg),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppVectors.logo),
                  SizedBox(height: 100),
                  Text(
                    "Enjoy Listening to Music",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: context.isDarkMode ? Colors.black : Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Spotify is a proprietary Swedish audio streaming and media services provider",
                    style: TextStyle(
                      fontSize: 17,
                      color: context.isDarkMode ? Colors.black : Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),

                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: BasicAppButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpPage(),
                              ),
                            );
                          },
                          title: 'Register',
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: 18,
                              color:
                                  context.isDarkMode
                                      ? Colors.black
                                      : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
