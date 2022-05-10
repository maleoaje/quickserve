import 'package:flutter/material.dart';
import 'package:quickserve/config/constants.dart';

class OrderHistoryDelivery extends StatefulWidget {
  const OrderHistoryDelivery({Key? key}) : super(key: key);

  @override
  _OrderHistoryDeliveryState createState() => _OrderHistoryDeliveryState();
}

class _OrderHistoryDeliveryState extends State<OrderHistoryDelivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          backgroundColor: primaryColor,
          elevation: 0,
          title: const Text('Order History'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: const [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Order history',
                style: TextStyle(
                    color: primaryDark,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'No recent orders',
                style: TextStyle(
                    color: primaryDark,
                    fontSize: 16,
                    fontWeight: FontWeight.w200),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
