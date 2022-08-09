import 'package:flutter/material.dart';

class InputPassword extends StatelessWidget {
  const InputPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(67),
          boxShadow: const [
            BoxShadow(
                color: Colors.black26, blurRadius: 10, offset: Offset(0, 2))
          ]),
      height: 40,
      width: 240,
      child: const TextField(
        textAlignVertical: TextAlignVertical(y: -1.0),
        obscureText: true,
        style: TextStyle(
            color: Colors.black87,
            fontFamily: 'Blinker-SemiBold.ttf',
            fontSize: 12),
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(
              top: 10.0,
            ),
            prefixIcon: Icon(Icons.lock, size: 18),
            hintText: 'Password',
            hintStyle: TextStyle(color: Colors.black26)),
      ),
    );
  }
}
