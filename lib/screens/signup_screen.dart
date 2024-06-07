import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_delivery_food/constants.dart';
import 'package:flutter_application_delivery_food/screens/home_screen.dart';
import 'package:flutter_application_delivery_food/screens/login.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/images/shape8.png'),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: defaultPadding * 3,
                    right: defaultPadding,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                    },
                    child: Text(
                      'Skip ',
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Column(
              children: [
                Text(
                  'Wellcome ',
                  style: GoogleFonts.ubuntu(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: defaultPadding),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: defaultPadding * 2),
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black54),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        width: 10.0,
                        height: 10.0,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            Icons.person_outline,
                            color: Colors.black,
                            size: 25.0,
                          ),
                        ),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintText: 'User Name',
                      hintStyle: TextStyle(
                        color: Colors.black26,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: defaultPadding),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: defaultPadding * 2),
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                    border: Border.all(width: 1, color: Colors.black54),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        width: 10.0,
                        height: 10.0,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            Icons.email_outlined,
                            color: Colors.black,
                            size: 25.0,
                          ),
                        ),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: Colors.black26,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: defaultPadding),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: defaultPadding * 2),
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                    border: Border.all(width: 1, color: Colors.black54),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        width: 10.0,
                        height: 10.0,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            Icons.phone_outlined,
                            color: Colors.black,
                            size: 25.0,
                          ),
                        ),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintText: 'Phone',
                      hintStyle: TextStyle(
                        color: Colors.black26,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: defaultPadding),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: defaultPadding * 2),
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                    border: Border.all(width: 1, color: Colors.black54),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        width: 10.0,
                        height: 10.0,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            Icons.lock_outline,
                            color: Colors.black,
                            size: 25.0,
                          ),
                        ),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.black26,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: defaultPadding),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: defaultPadding * 2),
                  height: 50.0,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF7B43F),
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Create',
                      style: GoogleFonts.ubuntu(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: defaultPadding),
                RichText(
                  text: TextSpan(
                    text: "Already have an account? ",
                    style: GoogleFonts.ubuntu(
                      color: Colors.black,
                      fontSize: 14.0,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: "Sign In",
                          style: GoogleFonts.ubuntu(
                            color: Colors.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return LoginScreen();
                                },
                              ));
                            }),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Image.asset(
            'assets/images/shape9.png',
          ),
        ],
      ),
    );
  }
}
