import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school/consts/colors.dart';
import 'package:school/screens/loginsreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _ispasswordvisible = true;
  bool _isconfpasswordvisible = true;

  void passwordvisible() {
    setState(() {
      _ispasswordvisible = !_ispasswordvisible;
    });
  }

  void iscnfpasswordvisible() {
    setState(() {
      _isconfpasswordvisible = !_isconfpasswordvisible;
    });
  }

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
                  'Sign Up',
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
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.password),
                        suffixIcon: InkWell(
                          child: const Icon(Icons.visibility),
                          onTap: () {},
                        ),
                        label: const Text('Password'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.password),
                        suffixIcon: InkWell(
                          child: const Icon(Icons.visibility),
                          onTap: () {},
                        ),
                        label: const Text('Confirm Password'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8))),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextButton(
                    // style: ButtonStyle(
                    //     backgroundColor:
                    //         MaterialStateProperty.all(loginScreenColor)),
                    onPressed: () {},
                    child: const Text(
                      'Sign Up',
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
                          'Already have an account? ',
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
                                    builder: (context) => LoginScreen()));
                          },
                          child: const Text(
                            'Login',
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
