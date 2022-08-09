import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: Alignment.center,
      height: 35,
      width: 240,
      child: RaisedButton(
        elevation: 5,
        onPressed: () { print('Login Pressed'); },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        color: Colors.deepPurple,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
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
