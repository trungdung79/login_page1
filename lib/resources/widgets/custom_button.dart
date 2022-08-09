import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final String imageAsset;
  final onPress;
  const CustomButton({Key? key, required this.buttonText, required this.buttonColor, required this.textColor, required this.imageAsset, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: Alignment.bottomLeft,
      //padding: const EdgeInsets.only(left: 20, right: 20),
      height: 35,
      width: 130,
      child: RaisedButton(
        elevation: 5,
        onPressed: onPress,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        color: buttonColor,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imageAsset),
            Text(
              '   $buttonText',
              style: TextStyle(
                color: textColor,
                fontFamily: 'Blinker-SemiBold.ttf',
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
