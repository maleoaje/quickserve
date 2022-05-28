import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:line_icons/line_icons.dart';
import 'package:quickserve/auth/forgot_password.dart';
import 'package:quickserve/auth/sign_up.dart';
import 'package:quickserve/config/constants.dart';
import 'package:quickserve/screens/choose_service.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _globalkey = GlobalKey<FormState>();
  final TextEditingController _etEmail = TextEditingController();
  final TextEditingController _etPassword = TextEditingController();
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
                      'Sign In',
                      style: TextStyle(
                          color: primaryDark,
                          fontSize: 26,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 80,
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
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  const ForgotPasswordPage()));
                        },
                        child: Text(
                          'forgot password?',
                          style: TextStyle(
                              color: primaryDark.withOpacity(0.6),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
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
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => const ChooseService()),
                          (Route<dynamic> route) => false);
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Sign In',
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
                    height: 40,
                  ),
                  Text(
                    'or sign in with ',
                    style: TextStyle(
                        color: primaryDark.withOpacity(0.5),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
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
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Do not have an account? ',
                        style: TextStyle(
                            color: primaryDark.withOpacity(0.5),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignUpPage()));
                        },
                        child: const Text(
                          ' Sign Up',
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
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
