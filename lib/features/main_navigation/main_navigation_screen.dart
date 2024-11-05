import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone_ver2/constants/gaps.dart';
import 'package:tiktok_clone_ver2/constants/sizes.dart';
import 'package:tiktok_clone_ver2/features/main_navigation/stf_screen.dart';
import 'package:tiktok_clone_ver2/features/main_navigation/widgets/nav_tab.dart';
import 'package:tiktok_clone_ver2/features/main_navigation/widgets/post_video_button.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  void onTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onPostVideoButtonTap() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text("cool video"),
          ),
        ),
        fullscreenDialog: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Offstage(
            offstage: _selectedIndex != 0,
            child: const StfScreen(),
          ),
          Offstage(
            offstage: _selectedIndex != 1,
            child: const StfScreen(),
          ),
          Offstage(
            offstage: _selectedIndex != 3,
            child: const StfScreen(),
          ),
          Offstage(
            offstage: _selectedIndex != 4,
            child: const StfScreen(),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.only(
            top: Sizes.size10,
            left: Sizes.size10,
            right: Sizes.size10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavTab(
                text: 'Home',
                icon: FontAwesomeIcons.house,
                selectedIcon: FontAwesomeIcons.house,
                isSelected: _selectedIndex == 0,
                onTab: () => onTab(0),
              ),
              NavTab(
                text: 'Search',
                icon: FontAwesomeIcons.magnifyingGlass,
                selectedIcon: FontAwesomeIcons.solidCompass,
                isSelected: _selectedIndex == 1,
                onTab: () => onTab(1),
              ),
              Gaps.h16,
              GestureDetector(
                onTap: _onPostVideoButtonTap,
                child: const PostVideoButton(),
              ),
              Gaps.h16,
              NavTab(
                text: 'Inbox',
                icon: FontAwesomeIcons.message,
                selectedIcon: FontAwesomeIcons.solidMessage,
                isSelected: _selectedIndex == 3,
                onTab: () => onTab(3),
              ),
              NavTab(
                text: 'Profile',
                icon: FontAwesomeIcons.user,
                selectedIcon: FontAwesomeIcons.solidUser,
                isSelected: _selectedIndex == 4,
                onTab: () => onTab(4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
