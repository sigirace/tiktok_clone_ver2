import 'package:flutter/material.dart';
import 'package:tiktok_clone_ver2/constants/font_sizes.dart';
import 'package:tiktok_clone_ver2/constants/gaps.dart';
import 'package:tiktok_clone_ver2/constants/sizes.dart';
import 'package:tiktok_clone_ver2/features/authentication/widgets/form_button.dart';
import 'package:tiktok_clone_ver2/features/onboarding/interests_screen.dart';

class LoginFormScreen extends StatefulWidget {
  const LoginFormScreen({super.key});

  @override
  State<LoginFormScreen> createState() => _LoginFormScreenState();
}

class _LoginFormScreenState extends State<LoginFormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Map<String, String> formData = {};

  void _onSubmitTap() {
    if (_formKey.currentState != null) {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const InterestsScreen()));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Log in"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.size36,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  cursorColor: Theme.of(context).primaryColor,
                  validator: (value) {
                    return null;
                  },
                  onSaved: (newValue) {
                    if (newValue != null) {
                      formData['email'] = newValue;
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(
                      fontSize: FontSizes.size13,
                      color: Colors.grey.shade400,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ),
                Gaps.v16,
                TextFormField(
                  cursorColor: Theme.of(context).primaryColor,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your password";
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    if (newValue != null) {
                      formData['password'] = newValue;
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                      fontSize: FontSizes.size13,
                      color: Colors.grey.shade400,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ),
                Gaps.v28,
                GestureDetector(
                  onTap: _onSubmitTap,
                  child: const FormButton(disabled: false),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
