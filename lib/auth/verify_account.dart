import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:quickserve/config/constants.dart';
import 'package:quickserve/screens/choose_service.dart';

class VerifyAccountPage extends StatefulWidget {
  const VerifyAccountPage({Key? key}) : super(key: key);

  @override
  State<VerifyAccountPage> createState() => _VerifyAccountPageState();
}

class _VerifyAccountPageState extends State<VerifyAccountPage> {
  final _globalkey = GlobalKey<FormState>();

  bool _buttonDisabled = true;
  String _verificationCode = '';

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
            'Account Verification',
            style: TextStyle(color: primaryDark),
          ),
        ),
      ),
      body: Form(
        key: _globalkey,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 90, 30, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Enter the verification code sent to your phone number/email',
                      style: TextStyle(
                          color: primaryDark,
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  PinCodeTextField(
                    autoFocus: true,
                    appContext: context,
                    keyboardType: TextInputType.number,
                    length: 4,
                    showCursor: false,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                        shape: PinCodeFieldShape.underline,
                        fieldHeight: 50,
                        fieldWidth: 40,
                        inactiveColor: grey,
                        activeColor: primaryColor,
                        selectedColor: primaryColor),
                    animationDuration: const Duration(milliseconds: 300),
                    backgroundColor: Colors.transparent,
                    onChanged: (value) {
                      setState(() {
                        if (value.length == 4) {
                          _buttonDisabled = false;
                        } else {
                          _buttonDisabled = true;
                        }
                        _verificationCode = value;
                      });
                    },
                    beforeTextPaste: (text) {
                      return false;
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                      width: double.maxFinite,
                      child: TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) =>
                                  states.contains(MaterialState.disabled)
                                      ? Colors.grey[300]!
                                      : _buttonDisabled
                                          ? Colors.grey[300]!
                                          : primaryColor,
                            ),
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            )),
                          ),
                          onPressed: () {
                            if (!_buttonDisabled) {
                              log(_verificationCode);
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ChooseService()),
                                  (Route<dynamic> route) => false);
                              FocusScope.of(context).unfocus();
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(
                              'Verify',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: _buttonDisabled
                                      ? Colors.grey[600]
                                      : Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
