import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone_ver2/constants/font_sizes.dart';
import 'package:tiktok_clone_ver2/constants/gaps.dart';
import 'package:tiktok_clone_ver2/constants/sizes.dart';
import 'package:tiktok_clone_ver2/features/authentication/username_screen.dart';
import 'package:tiktok_clone_ver2/features/authentication/login_screen.dart';
import 'package:tiktok_clone_ver2/features/authentication/widgets/auth_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  void _onLogInTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  void _onEmailTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const UsernameScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.size40,
          ),
          child: Column(
            children: [
              Gaps.v80,
              Text(
                'Sign up for TikTok',
                style: TextStyle(
                  fontSize: FontSizes.size20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Gaps.v20,
              Text(
                "Create a profile, follow other accounts, make your own videos, and more.",
                style: TextStyle(
                  fontSize: FontSizes.size13,
                  color: Colors.black45,
                ),
                textAlign: TextAlign.center,
              ),
              Gaps.v40,
              GestureDetector(
                onTap: () => {
                  _onEmailTap(context),
                },
                child: const AuthButton(
                  text: "Use Phone or Email",
                  icon: FaIcon(FontAwesomeIcons.solidEnvelope),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Already have an account?",
            ),
            Gaps.h5,
            GestureDetector(
              onTap: () => _onLogInTap(context),
              child: Text(
                "Log in",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
