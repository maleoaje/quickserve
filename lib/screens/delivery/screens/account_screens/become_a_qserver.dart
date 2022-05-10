import 'package:flutter/material.dart';
import 'package:quickserve/config/constants.dart';

class BecomeAQServer extends StatefulWidget {
  const BecomeAQServer({Key? key}) : super(key: key);

  @override
  _BecomeAQServerState createState() => _BecomeAQServerState();
}

class _BecomeAQServerState extends State<BecomeAQServer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: primaryColor,
          elevation: 0,
          title: const Text('Become A Q-Server'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: const [
            Text(
              'Become a Q-Server and start making money on the go.',
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
