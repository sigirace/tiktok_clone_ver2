import 'package:flutter/material.dart';
import 'package:tiktok_clone_ver2/constants/sizes.dart';

class FormButton extends StatelessWidget {
  const FormButton({
    super.key,
    required bool disabled,
  }) : _disabled = disabled;

  final bool _disabled;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: AnimatedContainer(
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.size12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            Sizes.size5,
          ),
          color:
              _disabled ? Colors.grey.shade300 : Theme.of(context).primaryColor,
        ),
        duration: const Duration(
          milliseconds: 300,
        ),
        child: const AnimatedDefaultTextStyle(
          style: TextStyle(
            color: Colors.white,
          ),
          duration: Duration(
            milliseconds: 300,
          ),
          child: Text(
            "Next",
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
