import 'package:flutter/material.dart';
import 'package:tiktok_clone_ver2/constants/sizes.dart';

class StfScreen extends StatefulWidget {
  const StfScreen({super.key});

  @override
  State<StfScreen> createState() => _StfScreenState();
}

class _StfScreenState extends State<StfScreen> {
  int _clicks = 0;

  void _incrementClicks() {
    setState(() {
      _clicks++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              '$_clicks',
              style: const TextStyle(
                fontSize: Sizes.size40,
              ),
            ),
          ),
          TextButton(
            onPressed: _incrementClicks,
            child: const Text(
              'Increment',
              style: TextStyle(
                fontSize: Sizes.size20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
