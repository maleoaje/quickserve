import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:quickserve/config/constants.dart';
import 'package:quickserve/screens/delivery/screens/delivery_page.dart';

class HomePageDelivery extends StatefulWidget {
  const HomePageDelivery({Key? key}) : super(key: key);

  @override
  _HomePageDeliveryState createState() => _HomePageDeliveryState();
}

class _HomePageDeliveryState extends State<HomePageDelivery> {
  final TextEditingController _etAddress = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          backgroundColor: primaryColor,
          elevation: 0,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.04),
                          spreadRadius: 0.2,
                          blurRadius: 30,
                          offset: const Offset(0, 1)),
                    ],
                  ),
                  child: const CircleAvatar(
                    child: Icon(LineIcons.userCircle, color: white, size: 60),
                    radius: 30,
                    backgroundColor: Color.fromARGB(255, 213, 213, 213),
                    /*backgroundImage: NetworkImage(
                              '',
                            ),*/
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 213, 213, 213),
                      borderRadius: BorderRadius.circular(30)),
                  child: const Text(
                    'Q-POINT: 30 POINTS',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome, User\nWhat would you like to do today?',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.35,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 0.3,
                    padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 28, 125, 145),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.08),
                              spreadRadius: 0.2,
                              blurRadius: 30,
                              offset: const Offset(0, 1)),
                        ],
                        borderRadius: BorderRadius.circular(30)),
                    child: Stack(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Get 30% off your next pick up or drop off when you refer a friend.',
                            style: TextStyle(color: white),
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              padding:
                                  const EdgeInsets.fromLTRB(16, 10, 16, 10),
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Text(
                                'Refer a Friend',
                                style: TextStyle(
                                    color: white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 0.3,
                    padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 23, 126, 83),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.08),
                              spreadRadius: 0.2,
                              blurRadius: 30,
                              offset: const Offset(0, 1)),
                        ],
                        borderRadius: BorderRadius.circular(30)),
                    child: Stack(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'You can use your quick points to make redeem a free delivery',
                            style: TextStyle(color: white),
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              padding:
                                  const EdgeInsets.fromLTRB(16, 10, 16, 10),
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Text(
                                'Redeem Now',
                                style: TextStyle(
                                    color: white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const DeliveryDetailsPage(
                                    pageTitle: 'Pick Up',
                                  )));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0xffe9e9e9),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.08),
                                  spreadRadius: 0.2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 1)),
                            ],
                          ),
                          child: Image.asset(
                            'assets/package.png',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'Pick Up',
                        style: TextStyle(fontSize: 14, color: black),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const DeliveryDetailsPage(
                                    pageTitle: 'Drop Off',
                                  )));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0xffe9e9e9),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.08),
                                  spreadRadius: 0.2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 1)),
                            ],
                          ),
                          child: Image.asset(
                            'assets/package.png',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'Drop Off',
                        style: TextStyle(fontSize: 14, color: black),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.width * 0.34,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                color: const Color.fromARGB(255, 243, 243, 243),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      spreadRadius: 0.2,
                      blurRadius: 5,
                      offset: const Offset(0, 1)),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.04),
                                spreadRadius: 0.2,
                                blurRadius: 30,
                                offset: const Offset(0, 1)),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Enter Address',
                        style: TextStyle(fontSize: 14, color: black),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.04),
                                spreadRadius: 0.2,
                                blurRadius: 30,
                                offset: const Offset(0, 1)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) return "Address";
                      return null;
                    },
                    textInputAction: TextInputAction.next,
                    cursorColor: primaryColor,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.text,
                    controller: _etAddress,
                    style: const TextStyle(color: primaryDark, fontSize: 14),
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        LineIcons.locationArrow,
                        color: primaryDark,
                      ),
                      fillColor: Color(0xffe0e0e0),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primaryDark, width: 0)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Color(0xFFCCCCCC),
                        ),
                      ),
                      labelText: 'Current Location',
                      labelStyle: TextStyle(
                        color: primaryDark,
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
