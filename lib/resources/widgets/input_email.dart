import 'package:flutter/material.dart';

class InputEmail extends StatelessWidget {
  const InputEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: Alignment.centerLeft,
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
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
            color: Colors.black87,
            fontFamily: 'Blinker-SemiBold.ttf',
            fontSize: 12),
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(
              top: 10.0,
            ),
            prefixIcon: Icon(Icons.person, size: 18),
            hintText: 'Email',
            hintStyle: TextStyle(color: Colors.black26)),
      ),
    );
  }
}
