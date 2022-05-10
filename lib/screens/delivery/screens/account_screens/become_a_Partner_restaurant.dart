import 'package:flutter/material.dart';
import 'package:quickserve/config/constants.dart';

class BecomeAQRestaurant extends StatefulWidget {
  const BecomeAQRestaurant({Key? key}) : super(key: key);

  @override
  _BecomeAQRestaurantState createState() => _BecomeAQRestaurantState();
}

class _BecomeAQRestaurantState extends State<BecomeAQRestaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: primaryColor,
          elevation: 0,
          title: const Text('Become A Partner Restaurant'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: const [
            Text(
              'Partner with us and become  Q-Server Restaurant',
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
