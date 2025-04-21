import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_testing/common/helpers/is_dark_mode.dart';
import 'package:flutter_testing/common/widgets/appbar/basic_appbar.dart';
import 'package:flutter_testing/common/widgets/buttons/basic_app_button.dart';
import 'package:flutter_testing/core/configs/assets/app_vectors.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  final TextEditingController _fullName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        title: SvgPicture.asset(AppVectors.logo, width: 40, height: 40),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Register',
              style: TextStyle(
                color: context.isDarkMode ? Colors.black : Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'If you Need Any Support',
                  style: TextStyle(
                    color: context.isDarkMode ? Colors.black : Colors.white,
                    fontSize: 14,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Click Here',
                    style: TextStyle(color: Colors.green, fontSize: 14),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            _fullNameField(context),
            SizedBox(height: 20),
            _emailField(context),
            SizedBox(height: 20),
            _passwordField(context),
            SizedBox(height: 20),
            BasicAppButton(onPressed: () {}, title: "Create Account"),
            // Spacer(),
            SizedBox(height: 50),
            _bottomText(context),
          ],
        ),
      ),
    );
  }

  Widget _fullNameField(BuildContext context) {
    return TextField(
      controller: _fullName,
      decoration: InputDecoration(
        hintText: 'Full Name',
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      controller: _email,
      decoration: InputDecoration(
        hintText: 'Email ',
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      controller: _password,
      decoration: InputDecoration(
        hintText: 'Password',
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _bottomText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Do You Have An Account",
          style: TextStyle(
            color: context.isDarkMode ? Colors.black : Colors.white,
            fontSize: 14,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Sign In",
            style: TextStyle(color: Colors.green, fontSize: 14),
          ),
        ),
      ],
    );
  }
}
