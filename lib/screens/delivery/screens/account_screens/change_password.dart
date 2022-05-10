import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:line_icons/line_icons.dart';
import 'package:quickserve/auth/sign_up.dart';
import 'package:quickserve/config/constants.dart';

class ChangePasswordPage extends StatefulWidget {
  ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final _globalkey = GlobalKey<FormState>();
  final TextEditingController _etOldPass = TextEditingController();
  final TextEditingController _etNewPass = TextEditingController();
  final TextEditingController _etConfPass = TextEditingController();

  bool _obscureText = true;
  IconData _iconVisible = Icons.visibility_off;
  bool _obscureText1 = true;
  IconData _iconVisible1 = Icons.visibility_off;
  bool _obscureText2 = true;
  IconData _iconVisible2 = Icons.visibility_off;
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

  void _toggleObscureText1() {
    setState(() {
      _obscureText1 = !_obscureText1;
      if (_obscureText1 == true) {
        _iconVisible1 = Icons.visibility_off;
      } else {
        _iconVisible1 = Icons.visibility;
      }
    });
  }

  void _toggleObscureText2() {
    setState(() {
      _obscureText2 = !_obscureText2;
      if (_obscureText2 == true) {
        _iconVisible2 = Icons.visibility_off;
      } else {
        _iconVisible2 = Icons.visibility;
      }
    });
  }

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
            'Change Password',
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
                      'Set a new password',
                      style: TextStyle(
                          color: primaryDark,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) return "Enter Current Password";
                      return null;
                    },
                    cursorColor: primaryColor,
                    obscureText: _obscureText,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.emailAddress,
                    controller: _etOldPass,
                    style: const TextStyle(color: primaryColor, fontSize: 16),
                    onChanged: (textValue) {},
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.lock,
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
                      labelText: 'Enter Old Password',
                      labelStyle: const TextStyle(
                        color: primaryDark,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) return "Enter New Password";
                      return null;
                    },
                    cursorColor: primaryColor,
                    obscureText: _obscureText1,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.emailAddress,
                    controller: _etNewPass,
                    style: const TextStyle(color: primaryColor, fontSize: 16),
                    onChanged: (textValue) {},
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                          icon: Icon(_iconVisible1,
                              color: Colors.grey[400], size: 20),
                          onPressed: () {
                            _toggleObscureText1();
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
                      labelText: 'Enter New Password',
                      labelStyle: const TextStyle(
                        color: primaryDark,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) return "Confirm New Password";
                      return null;
                    },
                    cursorColor: primaryColor,
                    obscureText: _obscureText2,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.emailAddress,
                    controller: _etConfPass,
                    style: const TextStyle(color: primaryColor, fontSize: 16),
                    onChanged: (textValue) {},
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                          icon: Icon(_iconVisible2,
                              color: Colors.grey[400], size: 20),
                          onPressed: () {
                            _toggleObscureText2();
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
                      labelText: 'Confirm New Password',
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
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Change Password',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: primaryDark),
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
