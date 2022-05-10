import 'package:flutter/material.dart';
import 'package:quickserve/config/constants.dart';

class QuickPoints extends StatefulWidget {
  const QuickPoints({Key? key}) : super(key: key);

  @override
  _QuickPointsState createState() => _QuickPointsState();
}

class _QuickPointsState extends State<QuickPoints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: primaryColor,
          elevation: 0,
          title: const Text('Quick Points'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: const [
            Text(
              'Earn Quick points by completing tasks below.',
              style: TextStyle(
                  color: primaryDark,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
