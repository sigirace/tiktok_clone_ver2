import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tiktok_clone_ver2/features/authentication/sign_up_screen.dart';

void main() {
  runApp(const TikTokApp());
}

class TikTokApp extends StatelessWidget {
  const TikTokApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (_, child) {
        return MaterialApp(
          title: 'TikTok Clone',
          theme: ThemeData(
            primaryColor: const Color(0xFFE9435A),
            useMaterial3: true,
          ),
          home: const SignUpScreen(),
        );
      },
    );
  }
}
