import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone_ver2/constants/sizes.dart';

class PostVideoButton extends StatelessWidget {
  const PostVideoButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: Sizes.size10,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: Sizes.size20,
            child: Container(
              height: Sizes.size35,
              width: Sizes.size25,
              decoration: BoxDecoration(
                color: Colors.blue.shade300,
                borderRadius: BorderRadius.circular(
                  Sizes.size8,
                ),
              ),
            ),
          ),
          Positioned(
            left: Sizes.size20,
            child: Container(
              height: Sizes.size35,
              width: Sizes.size25,
              decoration: BoxDecoration(
                color: Colors.red.shade300,
                borderRadius: BorderRadius.circular(
                  Sizes.size8,
                ),
              ),
            ),
          ),
          Container(
            height: Sizes.size35,
            width: Sizes.size38,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                Sizes.size3,
              ),
            ),
            child: const Center(
              child: FaIcon(
                FontAwesomeIcons.plus,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
