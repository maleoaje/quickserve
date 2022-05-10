import 'package:flutter/material.dart';
import 'package:quickserve/config/constants.dart';

class GetHelp extends StatefulWidget {
  const GetHelp({Key? key}) : super(key: key);

  @override
  _GetHelpState createState() => _GetHelpState();
}

class _GetHelpState extends State<GetHelp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: primaryColor,
          elevation: 0,
          title: const Text('Get Help'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: const [
            Text(
              'Which order do you need help with?',
              style: TextStyle(
                  color: primaryDark,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Need help with something other than an order? ',
              style: TextStyle(
                  color: primaryDark,
                  fontSize: 16,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Get Help',
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: primaryDark,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
