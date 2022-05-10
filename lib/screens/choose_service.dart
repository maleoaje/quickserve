import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quickserve/config/constants.dart';
import 'package:quickserve/screens/delivery/bottom_nav_bar.dart';
import 'package:quickserve/screens/restaurant/bottom_nav_bar.dart';

class ChooseService extends StatefulWidget {
  const ChooseService({Key? key}) : super(key: key);

  @override
  _ChooseServiceState createState() => _ChooseServiceState();
}

class _ChooseServiceState extends State<ChooseService> {
  DateTime? _currentBackPressTime;
  Future<bool> _onWillPop() {
    DateTime now = DateTime.now();
    if (_currentBackPressTime == null ||
        now.difference(_currentBackPressTime!) > const Duration(seconds: 2)) {
      _currentBackPressTime = now;
      Fluttertoast.showToast(
          backgroundColor: primaryDark,
          msg: 'Press back again to exit',
          toastLength: Toast.LENGTH_LONG);
      return Future.value(false);
    }
    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: WillPopScope(
        onWillPop: _onWillPop,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 150, 0, 150),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                const BottomNavBarDelivery()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(36),
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.width * 0.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromARGB(255, 65, 187, 211),
                        ),
                        child: Image.asset(
                          'assets/delivery.png',
                          height: 80,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Delivery',
                      style: TextStyle(
                        fontSize: 21,
                        color: white,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                const BottomNavBarRestaurant()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(36),
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.width * 0.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromARGB(255, 65, 187, 211),
                        ),
                        child: Image.asset(
                          'assets/restaurant.png',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Restaurant',
                      style: TextStyle(
                        fontSize: 21,
                        color: white,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
