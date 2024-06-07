import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_delivery_food/constants.dart';
import 'package:flutter_application_delivery_food/screens/signup_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/images/shape7.png',
          ),
          const Spacer(),
          Center(
            child: Column(
              children: [
                Text(
                  'Wellcome Back!',
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
                    keyboardType: TextInputType.emailAddress,
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
                      hintText: 'Email address',
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
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.orange,
                        checkColor: Colors.white,
                        value: isChecked,
                        side: BorderSide(
                          width: 1.0,
                          color: Colors.orange,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      const SizedBox(width: 5.0),
                      Text(
                        'Remmember me',
                        style: GoogleFonts.ubuntu(
                          color: Colors.orange,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
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
                      'Login',
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
                    text: "Don't have an account? ",
                    style: GoogleFonts.ubuntu(
                      color: Colors.black,
                      fontSize: 14.0,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: "Sign up",
                          style: GoogleFonts.ubuntu(
                            color: Colors.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return SignUpScreen();
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
            'assets/images/shape6.png',
          ),
        ],
      ),
    );
  }
}
