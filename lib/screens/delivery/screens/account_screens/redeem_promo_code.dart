import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:quickserve/config/constants.dart';

class RedeemPromoCode extends StatefulWidget {
  const RedeemPromoCode({Key? key}) : super(key: key);

  @override
  _RedeemPromoCodeState createState() => _RedeemPromoCodeState();
}

class _RedeemPromoCodeState extends State<RedeemPromoCode> {
  final TextEditingController _etPromoCode = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: primaryColor,
          elevation: 0,
          title: const Text('Redeem Promo Code'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque et dictum mi.',
              style: TextStyle(
                  color: primaryDark,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  'XIADKJBFA',
                  style: TextStyle(
                      color: primaryDark,
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  '02.07.2021 ',
                  style: TextStyle(
                      color: primaryDark,
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  'WYDFJBAB',
                  style: TextStyle(
                      color: primaryDark,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  '02.05.2021 ',
                  style: TextStyle(
                      color: primaryDark,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) return "Enter Promo Code";
                return null;
              },
              textInputAction: TextInputAction.next,
              cursorColor: primaryColor,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              controller: _etPromoCode,
              style: const TextStyle(color: primaryDark, fontSize: 14),
              decoration: const InputDecoration(
                suffixIcon: Icon(
                  LineIcons.plusSquareAlt,
                  color: primaryDark,
                ),
                fillColor: Color(0xffe0e0e0),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: primaryDark, width: 0)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(),
                  borderSide: BorderSide(
                    width: 0.3,
                    color: Color(0xFFCCCCCC),
                  ),
                ),
                labelText: 'Add a new Promo Code',
                labelStyle: TextStyle(
                  color: primaryDark,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
