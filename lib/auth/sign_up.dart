import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:line_icons/line_icons.dart';
import 'package:quickserve/auth/sign_in.dart';
import 'package:quickserve/auth/verify_account.dart';
import 'package:quickserve/config/constants.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _globalkey = GlobalKey<FormState>();
  final TextEditingController _etName = TextEditingController();
  final TextEditingController _etEmail = TextEditingController();
  final TextEditingController _etPassword = TextEditingController();
  final TextEditingController _etPhone = TextEditingController();

  bool _obscureText = true;
  IconData _iconVisible = Icons.visibility_off;
  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
      if (_obscureText == true) {
        _iconVisible = Icons.visibility_off;
      } else {
        _iconVisible = Icons.visibility;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: primaryColor,
          elevation: 0,
        ),
      ),
      body: Form(
        key: _globalkey,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child:
                          Icon(Icons.arrow_back, color: primaryDark, size: 30),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Getting Started',
                      style: TextStyle(
                          color: primaryDark,
                          fontSize: 26,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'create an account',
                      style: TextStyle(
                          color: primaryDark,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) return "Enter Full Name";
                      return null;
                    },
                    textInputAction: TextInputAction.next,
                    cursorColor: primaryColor,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.text,
                    controller: _etName,
                    style: const TextStyle(color: primaryDark, fontSize: 14),
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        LineIcons.user,
                        color: primaryDark,
                      ),
                      fillColor: Color(0xffe0e0e0),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          borderSide: BorderSide(color: primaryDark, width: 0)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        borderSide: BorderSide(
                          width: 2,
                          color: Color(0xFFCCCCCC),
                        ),
                      ),
                      labelText: 'Full Name',
                      labelStyle: TextStyle(
                        color: primaryDark,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) return "Enter email";
                      return null;
                    },
                    textInputAction: TextInputAction.next,
                    cursorColor: primaryColor,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.emailAddress,
                    controller: _etEmail,
                    style: const TextStyle(color: primaryDark, fontSize: 14),
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        LineIcons.envelope,
                        color: primaryDark,
                      ),
                      fillColor: Color(0xffe0e0e0),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          borderSide: BorderSide(color: primaryDark, width: 0)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        borderSide: BorderSide(
                          width: 2,
                          color: Color(0xFFCCCCCC),
                        ),
                      ),
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: primaryDark,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) return "Enter Phone Number";
                      return null;
                    },
                    textInputAction: TextInputAction.next,
                    cursorColor: primaryColor,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    controller: _etPhone,
                    style: const TextStyle(color: primaryDark, fontSize: 14),
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        LineIcons.phone,
                        color: primaryDark,
                      ),
                      fillColor: Color(0xffe0e0e0),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          borderSide: BorderSide(color: primaryDark, width: 0)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        borderSide: BorderSide(
                          width: 2,
                          color: Color(0xFFCCCCCC),
                        ),
                      ),
                      labelText: 'Phone Number',
                      labelStyle: TextStyle(
                        color: primaryDark,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) return "Enter Password";
                      return null;
                    },
                    cursorColor: primaryColor,
                    obscureText: _obscureText,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.emailAddress,
                    controller: _etPassword,
                    style: const TextStyle(color: primaryColor, fontSize: 16),
                    onChanged: (textValue) {},
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        LineIcons.lock,
                        color: black,
                      ),
                      suffixIcon: IconButton(
                          icon: Icon(_iconVisible,
                              color: Colors.grey[400], size: 20),
                          onPressed: () {
                            _toggleObscureText();
                          }),
                      fillColor: const Color(0xffe0e0e0),
                      focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          borderSide: BorderSide(color: primaryDark, width: 0)),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        borderSide: BorderSide(
                          width: 2,
                          color: Color(0xFFCCCCCC),
                        ),
                      ),
                      labelText: 'Password',
                      labelStyle: const TextStyle(
                        color: primaryDark,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(3),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) => primaryColor,
                      ),
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const VerifyAccountPage()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Create Account',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: white),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account? ',
                        style: TextStyle(
                            color: primaryDark,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const SignInPage()),
                          );
                        },
                        child: const Text(
                          ' Login',
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'or sign up with ',
                    style: TextStyle(
                        color: primaryDark.withOpacity(0.5),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/facebook.png',
                        width: 40,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        'assets/google.png',
                        width: 40,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'By signing up you have agreed to our ',
                    style: TextStyle(
                        color: primaryDark.withOpacity(0.5),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Terms of Use & Privacy Policy ',
                    style: TextStyle(
                        color: primaryDark.withOpacity(0.8),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
