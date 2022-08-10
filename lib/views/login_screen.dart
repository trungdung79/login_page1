import 'package:flutter/material.dart';
import 'package:login_page1/resources/widgets/custom_button.dart';
import 'package:login_page1/resources/widgets/input_email.dart';
import 'package:login_page1/resources/widgets/login_button.dart';
import 'package:login_page1/resources/widgets/input_password.dart';
import 'package:login_page1/resources/widgets/custom_text_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: AppBar(
        title: const Text(""),
        centerTitle: true,
      ),
      */
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              bottom: 130,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.asset('assets/images/vector2.png'),
                )
              ),
            ),
            Positioned(
              top: 0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.asset('assets/images/vector1.png'),
                )
              ),
            ),
            Positioned(
              top: 0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                //alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    const SizedBox(height: 100,),
                    const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Blinker-SemiBold.ttf',
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(height: 50,),
                    const InputEmail(),
                    const SizedBox(height: 15,),
                    const InputPassword(),
                    const SizedBox(height: 40,),
                    const LoginButton(),
                    const SizedBox(height: 30,),
                    CustomTextButton(
                      buttonText: 'Forgot your password ?',
                      buttonColor: Colors.white,
                      onPress: () { print('Forgot Password Pressed'); },
                    ),
                    const SizedBox(height: 100,),
                    CustomTextButton(
                      buttonText: 'or connect with',
                      buttonColor: Colors.red,
                      onPress: () => print('or connect with Pressed'),
                    ),
                    const SizedBox(height: 65,),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width: 20,),
                        Expanded(
                          flex: 1,
                          child: CustomButton(
                            buttonText: 'Facebook',
                            buttonColor: Colors.blue,
                            textColor: Colors.white,
                            imageAsset: 'assets/images/facebook.png',
                            onPress: () {
                              print('Login With FaceBook Pressed');
                            },
                          ),
                        ),
                        const SizedBox(width: 20,),
                        Expanded(
                          flex: 1,
                          child: CustomButton(
                            buttonText: 'Twitter',
                            buttonColor: const Color.fromARGB(255, 12, 3, 108),
                            textColor: Colors.white,
                            imageAsset: 'assets/images/twitter.png',
                            onPress: () {
                              print('Login With Twitter Pressed');
                            },
                          ),
                        ),
                        const SizedBox(width: 20,),
                      ],
                    ),
                    const SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextButton(
                          buttonText: 'Don\'t have an account?',
                          buttonColor: Colors.grey,
                          onPress: () { print('Don\'t have an account? Pressed'); },
                        ),
                        const SizedBox(width: 10,),
                        CustomTextButton(
                          buttonText: 'Sign Up',
                          buttonColor: const Color.fromARGB(255, 26, 37, 190),
                          onPress: () { print('Sign Up Pressed'); },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
