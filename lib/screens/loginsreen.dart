import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school/consts/colors.dart';
import 'package:school/screens/signupscreen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void passwordvisibleUpdate() {
    setState(() {
      _isvisible = !_isvisible;
    });
  }

  bool _isvisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: loginScreenColor,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: const Color(0xff9BBEC8),
              borderRadius: BorderRadius.circular(10)),
          child: SizedBox(
            width: 400,
            height: 500,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(fontFamily: 'Young', fontSize: 50),
                ),
                const SizedBox(
                  height: 15,
                ),
                const CircleAvatar(
                  radius: 50,
                  child: Icon(
                    Icons.account_circle,
                    size: 100,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.email),
                        label: const Text('Email'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: _isvisible,
                    decoration: InputDecoration(
                        focusColor: userAc,
                        prefixIcon: const Icon(Icons.password),
                        suffixIcon: InkWell(
                          child: _isvisible
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off),
                          onTap: () {
                            passwordvisibleUpdate();
                          },
                        ),
                        label: const Text('Password'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8))),
                  ),
                ),
                // const SizedBox(
                //   height: 8,
                // ),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                      // style: ButtonStyle(
                      //     backgroundColor:
                      //         MaterialStateProperty.all(loginScreenColor)),
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(fontSize: 10, fontFamily: 'Merri'),
                      )),
                ),
                FilledButton(
                    // style: ButtonStyle(
                    //     backgroundColor:
                    //         MaterialStateProperty.all(loginScreenColor)),
                    onPressed: () {},
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 20, fontFamily: 'Merri'),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have an account? ',
                          style: TextStyle(fontFamily: 'Merri', fontSize: 15),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.popUntil(
                                context, (route) => route.isFirst);
                            Navigator.pushReplacement(
                                context,
                                CupertinoPageRoute(
                                    fullscreenDialog: true,
                                    builder: (context) =>
                                        const SignUpScreen()));
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(fontFamily: 'Merri', fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
