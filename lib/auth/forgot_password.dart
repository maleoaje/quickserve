import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:line_icons/line_icons.dart';
import 'package:quickserve/config/constants.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _globalkey = GlobalKey<FormState>();
  final TextEditingController _etEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: primaryColor,
          elevation: 0,
          title: const Text(
            'Forgot Password',
            style: TextStyle(color: white),
          ),
        ),
      ),
      body: Form(
        key: _globalkey,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Enter the email address of your account and we will send you a link to reset your password',
                      style: TextStyle(
                          color: primaryDark,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
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
                      labelText: 'Enter Email',
                      labelStyle: TextStyle(
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
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Reset Password',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: white),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
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
