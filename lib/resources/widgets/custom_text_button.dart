import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final onPress;
  const CustomTextButton({Key? key,
    required this.buttonText,
    required this.buttonColor,
    required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: onPress,
        child: Text(
          buttonText,
          style: TextStyle(
            color: buttonColor,
            fontFamily: 'Blinker-SemiBold.ttf',
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }
}
