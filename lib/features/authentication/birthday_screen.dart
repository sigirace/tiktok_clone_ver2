import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone_ver2/constants/font_sizes.dart';
import 'package:tiktok_clone_ver2/constants/gaps.dart';
import 'package:tiktok_clone_ver2/constants/sizes.dart';
import 'package:tiktok_clone_ver2/features/authentication/widgets/form_button.dart';

class BirthdayScreen extends StatefulWidget {
  const BirthdayScreen({super.key});

  @override
  State<BirthdayScreen> createState() => _BirthdayScreenState();
}

class _BirthdayScreenState extends State<BirthdayScreen> {
  final TextEditingController _birthdayController = TextEditingController();

  DateTime initialDate = DateTime.now();

  @override
  void initState() {
    super.initState();
    _setTextFieldDate(initialDate);
  }

  @override
  void dispose() {
    _birthdayController.dispose();
    super.dispose();
  }

  void _onNextTap() {}

  void _setTextFieldDate(DateTime date) {
    final textDate = date.toString().split((" ")).first;
    _birthdayController.value = TextEditingValue(
      text: textDate,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign up",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.size36,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.v40,
            Text(
              "When is your birthday?",
              style: TextStyle(
                fontSize: FontSizes.size18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Gaps.v10,
            Text(
              "Your birthday won't be shown publicly.",
              style: TextStyle(
                fontSize: FontSizes.size12,
                color: Colors.black54,
              ),
            ),
            Gaps.v16,
            TextField(
              controller: _birthdayController,
              decoration: InputDecoration(
                hintText: "Birthday",
                hintStyle: TextStyle(
                  fontSize: FontSizes.size13,
                  color: Colors.grey.shade600,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade600,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              cursorColor: Theme.of(context).primaryColor,
            ),
            Gaps.v16,
            GestureDetector(
              onTap: () => {
                _onNextTap(),
              },
              child: const FormButton(
                disabled: false,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: Sizes.size100 + Sizes.size100 + Sizes.size100,
        child: CupertinoDatePicker(
          maximumDate: initialDate,
          initialDateTime: initialDate,
          mode: CupertinoDatePickerMode.date,
          onDateTimeChanged: (DateTime date) => {
            _setTextFieldDate(
              date,
            ),
          },
        ),
      ),
    );
  }
}
