import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:quickserve/config/constants.dart';

Widget customNotificationIcon() {
  return Stack(
    children: <Widget>[
      const Icon(Icons.notifications, color: Colors.white),
      Positioned(
        right: 43,
        child: Container(
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
          constraints: const BoxConstraints(
            minWidth: 11,
            minHeight: 11,
          ),
        ),
      )
    ],
  );
}

Widget customNotifIcon(int count, Color color) {
  return Stack(
    children: <Widget>[
      Container(
          height: 30,
          width: 30,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Icon(Icons.notifications, color: Colors.white)),
      Positioned(
        right: 0,
        child: Container(
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
          constraints: const BoxConstraints(
            minWidth: 14,
            minHeight: 14,
          ),
          child: Center(
            child: Text(
              count.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 8,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      )
    ],
  );
}

Widget buildRecentVisitorsCard(
  String name,
  String initialLetter,
  String date,
) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(16, 0, 16, 15),
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                // ignore: prefer_const_constructors
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 0.5,
                    blurRadius: 20,
                    offset: const Offset(0, 1)),
              ]),
          height: 65,
          width: 250,
          child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) => Colors.white),
                overlayColor:
                    MaterialStateProperty.all(const Color(0xffd0c5e2)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  const SizedBox(width: 50),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          name,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        // ignore: prefer_const_constructors
                        Text(
                          date,
                          style: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
        Positioned(
          bottom: 13,
          left: 10,
          child: Container(
            height: 40,
            width: 40,
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
                color: const Color(0xfffe624d),
                borderRadius: BorderRadius.circular(200),
                boxShadow: [
                  // ignore: prefer_const_constructors
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0.5,
                      blurRadius: 10,
                      offset: const Offset(2, 5)),
                ]),
            constraints: const BoxConstraints(
              minWidth: 11,
              minHeight: 11,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 7,
                ),
                Text(
                  initialLetter,
                  style: const TextStyle(
                      fontFamily: 'Arimo',
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildServiceCards(String name, IconData icon, String description,
    Color iconColor, Color iconBGcolor, Color serviceColor) {
  return Stack(children: [
    Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: iconBGcolor,
            borderRadius: BorderRadius.circular(200),
          ),
          child: Icon(
            icon,
            color: iconColor,
            size: 20,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          name,
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.w600, color: serviceColor),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 12, fontWeight: FontWeight.w300, color: primaryDark),
        ),
      ],
    ),
  ]);
}

Widget buildComingSoonServiceCards(
    String name,
    IconData icon,
    String description,
    Color iconColor,
    Color iconBGcolor,
    Color serviceColor) {
  return Stack(children: [
    Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: iconBGcolor,
            borderRadius: BorderRadius.circular(200),
          ),
          child: Icon(
            icon,
            color: iconColor,
            size: 20,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          name,
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.w600, color: serviceColor),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 12, fontWeight: FontWeight.w300, color: primaryDark),
        ),
      ],
    ),
    Positioned(
      top: 0,
      left: 0,
      child: Container(
        height: 30,
        width: 100,
        decoration: BoxDecoration(
          boxShadow: [
            // ignore: prefer_const_constructors
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 0.3,
                blurRadius: 5,
                offset: const Offset(0, 1)),
          ],
          color: primaryColor,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: const Center(
          child: Text(
            'Coming Soon',
            style: TextStyle(color: white, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    ),
  ]);
}

Widget buildScheduledVisitorsCard(
    String name, String initialLetter, String time, Color color) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(10, 0, 10, 1),
    child: Container(
      height: 65,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: 40,
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(30),
              ),
              constraints: const BoxConstraints(
                minWidth: 14,
                minHeight: 14,
              ),
              child: Center(
                child: Text(
                  initialLetter,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 14),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Text(
                  time,
                  textAlign: TextAlign.end,
                  style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget buildQuickPaymentCard(String name, String date, Color color) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(16, 0, 0, 15),
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                // ignore: prefer_const_constructors
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 0.5,
                    blurRadius: 5,
                    offset: const Offset(0, 1)),
              ]),
          height: 100,
          width: 180,
          child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) => Colors.white),
                overlayColor:
                    MaterialStateProperty.all(const Color(0xffd0c5e2)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          name,
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        // ignore: prefer_const_constructors
                        Text(
                          date,
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
        Positioned(
          child: Container(
            height: 100,
            width: 0.2,
            decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                boxShadow: [
                  // ignore: prefer_const_constructors
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0.5,
                      blurRadius: 10,
                      offset: const Offset(2, 5)),
                ]),
            constraints: const BoxConstraints(
              minWidth: 11,
              minHeight: 11,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildBillsPaymentCard(context, String name, String description,
    Color color, StatefulWidget page) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(16, 0, 16, 15),
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                // ignore: prefer_const_constructors
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 0.5,
                    blurRadius: 5,
                    offset: const Offset(0, 1)),
              ]),
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) => Colors.white),
                overlayColor:
                    MaterialStateProperty.all(const Color(0xffd0c5e2)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => page));
              },
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          name,
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        // ignore: prefer_const_constructors
                        Text(
                          description,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
        Positioned(
          child: Container(
            height: 100,
            width: 0.2,
            decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                boxShadow: [
                  // ignore: prefer_const_constructors
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0.5,
                      blurRadius: 10,
                      offset: const Offset(2, 5)),
                ]),
            constraints: const BoxConstraints(
              minWidth: 11,
              minHeight: 11,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildBillsPaymentCardHorizontal(context, String name, String description,
    Color color, StatefulWidget page) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(16, 0, 16, 15),
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                // ignore: prefer_const_constructors
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 0.5,
                    blurRadius: 5,
                    offset: const Offset(0, 1)),
              ]),
          height: 100,
          width: MediaQuery.of(context).size.width * 0.48,
          child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) => Colors.white),
                overlayColor:
                    MaterialStateProperty.all(const Color(0xffd0c5e2)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => page));
              },
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          name,
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        // ignore: prefer_const_constructors
                        Text(
                          description,
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
        Positioned(
          child: Container(
            height: 100,
            width: 0.2,
            decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                boxShadow: [
                  // ignore: prefer_const_constructors
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0.5,
                      blurRadius: 10,
                      offset: const Offset(2, 5)),
                ]),
            constraints: const BoxConstraints(
              minWidth: 11,
              minHeight: 11,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildTransactionHistoryCard(
  String name,
  String price,
  String time,
) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
    child: Container(
      padding: const EdgeInsets.only(left: 16),
      height: 65,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          Column(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          textAlign: TextAlign.end,
                          style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          time,
                          textAlign: TextAlign.end,
                          style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Text(
                  '-   ' + price,
                  textAlign: TextAlign.end,
                  style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget buildSettingsCard(
  String name,
  IconData icon,
) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
    child: Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 16),
      height: 65,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      icon,
                      size: 25,
                    ),
                    const SizedBox(width: 5),
                    Center(
                      child: Text(
                        name,
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 16, 10, 0),
                  child: Icon(
                    Icons.keyboard_arrow_right,
                    size: 30,
                  )),
            ),
          )
        ],
      ),
    ),
  );
}

Widget buildSortCard(
  String name,
  IconData icon,
) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
    child: Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 16),
      height: 65,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      icon,
                      size: 25,
                    ),
                    const SizedBox(width: 5),
                    Center(
                      child: Text(
                        name,
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 10, 0),
                child: Icon(
                  Icons.keyboard_arrow_right,
                  size: 30,
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget buildResidentsCard(context, String name, String initialLetter,
    String address, StatefulWidget page) {
  return Stack(
    children: [
      SizedBox(
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) => Colors.white),
              overlayColor: MaterialStateProperty.all(const Color(0xffd0c5e2)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              )),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => page));
            },
            child: Row(
              children: [
                const SizedBox(width: 50),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        name,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      // ignore: prefer_const_constructors
                      Text(
                        address,
                        style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
      Positioned(
        bottom: 10,
        left: 20,
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: const Color(0xfffe624d),
            borderRadius: BorderRadius.circular(200),
          ),
          constraints: const BoxConstraints(
            minWidth: 11,
            minHeight: 11,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  initialLetter,
                  style: const TextStyle(
                      fontFamily: 'Arimo',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget buildResidentViewCard(context, String name, String residentImage,
    String address, StatefulWidget page) {
  return Stack(
    children: [
      SizedBox(
        height: 80,
        width: MediaQuery.of(context).size.width,
        child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) => Colors.white),
              overlayColor: MaterialStateProperty.all(const Color(0xffd0c5e2)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              )),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => page));
            },
            child: Row(
              children: [
                const SizedBox(width: 50),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      // ignore: prefer_const_constructors
                      Text(
                        address,
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
      Positioned(
        bottom: 10,
        left: 20,
        child: Container(
          decoration: BoxDecoration(
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                // ignore: prefer_const_constructors
                BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    spreadRadius: 0.8,
                    blurRadius: 20),
              ]),
          child: Column(
            children: const [
              SizedBox(
                height: 5,
              ),
              Center(
                child: CircleAvatar(
                  child: Icon(LineIcons.userCircle, color: white, size: 40),
                  radius: 25,
                  backgroundColor: primaryDark,
                  /*backgroundImage: NetworkImage(
                            '',
                          ),*/
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget buildPendingResidentsCard(
  context,
  String name,
  String initialLetter,
  String address,
) {
  return Stack(
    children: [
      SizedBox(
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) => Colors.white),
              overlayColor: MaterialStateProperty.all(const Color(0xffd0c5e2)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              )),
            ),
            onPressed: () {},
            child: Row(
              children: [
                const SizedBox(width: 50),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        name,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      // ignore: prefer_const_constructors
                      Text(
                        address,
                        style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
      Positioned(
        bottom: 10,
        left: 20,
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(200),
          ),
          constraints: const BoxConstraints(
            minWidth: 11,
            minHeight: 11,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  initialLetter,
                  style: const TextStyle(
                      fontFamily: 'Arimo',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget buildNotificationsCard(
    String name, String service, String time, String address) {
  return Container(
    padding: const EdgeInsets.only(left: 20),
    height: 80,
    width: double.maxFinite,
    decoration: const BoxDecoration(
      color: Colors.white,
    ),
    child: Row(
      children: [
        Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                            fontSize: 14,
                            color: primaryColor,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        service,
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                            fontSize: 12,
                            color: primaryDark,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Text(
                      time,
                      textAlign: TextAlign.end,
                      style: const TextStyle(
                          fontSize: 12,
                          color: primaryDark,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Text(
                      address,
                      textAlign: TextAlign.end,
                      style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Widget buildGroupNotificationsCard(String name, String service, String time) {
  return Container(
    padding: const EdgeInsets.only(left: 20),
    height: 80,
    width: double.maxFinite,
    decoration: const BoxDecoration(
      color: Colors.white,
    ),
    child: Row(
      children: [
        Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        service,
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                            fontSize: 12,
                            color: primaryDark,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Text(
                      time,
                      textAlign: TextAlign.end,
                      style: const TextStyle(
                          fontSize: 12,
                          color: primaryDark,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: buildCard(),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Widget buildCard() => Row(
      mainAxisAlignment: MainAxisAlignment.end,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        SizedBox(
          width: 92,
          child: Stack(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Positioned(
                left: 55,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.grey[100],
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(Icons.add, size: 7, color: Colors.grey),
                      const Text(
                        '20',
                        style: TextStyle(fontSize: 7, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 35,
                child: CircleAvatar(
                  child: Icon(LineIcons.userCircle, color: white, size: 40),
                  radius: 25,
                  backgroundColor: primaryDark,
                  /*backgroundImage: NetworkImage(
                            '',
                          ),*/
                ),
              ),
              const Positioned(
                left: 25,
                child: CircleAvatar(
                  child: Icon(LineIcons.userCircle, color: white, size: 40),
                  radius: 25,
                  backgroundColor: primaryDark,
                  /*backgroundImage: NetworkImage(
                            '',
                          ),*/
                ),
              ),
              const Positioned(
                left: 15,
                child: CircleAvatar(
                  child: Icon(LineIcons.userCircle, color: white, size: 40),
                  radius: 25,
                  backgroundColor: primaryDark,
                  /*backgroundImage: NetworkImage(
                            '',
                          ),*/
                ),
              ),
              const CircleAvatar(
                child: Icon(LineIcons.userCircle, color: white, size: 40),
                radius: 25,
                backgroundColor: primaryDark,
                /*backgroundImage: NetworkImage(
                            '',
                          ),*/
              ),
            ],
          ),
        ),
      ],
    );

Widget buildServiceRequestCard(String name, String service, String time,
    String status, Color textColor, Color containerColor) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
    child: Container(
      padding: const EdgeInsets.only(left: 20),
      height: 80,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          textAlign: TextAlign.end,
                          style: const TextStyle(
                              fontSize: 16,
                              color: primaryColor,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          service,
                          textAlign: TextAlign.end,
                          style: const TextStyle(
                              fontSize: 12,
                              color: primaryDark,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text(
                        time,
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                            fontSize: 12,
                            color: primaryDark,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                      decoration: BoxDecoration(
                        color: containerColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        status,
                        style: TextStyle(
                            color: textColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget buildAssignRoleCard(
    String name, String service, String availability, Color textColor) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
    child: Container(
      padding: const EdgeInsets.only(left: 20),
      height: 80,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          textAlign: TextAlign.end,
                          style: const TextStyle(
                              fontSize: 16,
                              color: primaryColor,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          service,
                          textAlign: TextAlign.end,
                          style: const TextStyle(
                              fontSize: 12,
                              color: primaryDark,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      availability,
                      style: TextStyle(
                          color: textColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget buildExpectedVisitorsCard(
  String visitor,
  String resident,
  String time,
  String address,
) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
    child: Container(
      padding: const EdgeInsets.only(left: 20),
      height: 80,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          visitor,
                          textAlign: TextAlign.end,
                          style: const TextStyle(
                              fontSize: 16,
                              color: primaryColor,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'from ' + resident,
                          textAlign: TextAlign.end,
                          style: const TextStyle(
                              fontSize: 12,
                              color: primaryDark,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text(
                        time,
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      address,
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget buildSettingsCards(String name, IconData icon, String description,
    Color iconColor, Color iconBGcolor, Color serviceColor) {
  return Column(
    children: [
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: iconBGcolor,
          borderRadius: BorderRadius.circular(200),
        ),
        child: Icon(
          icon,
          color: iconColor,
          size: 20,
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      Text(
        name,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w600, color: serviceColor),
      ),
      const SizedBox(
        height: 8,
      ),
      Text(
        description,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontSize: 11, fontWeight: FontWeight.w300, color: primaryDark),
      ),
    ],
  );
}

Widget buildAdminTransHistoryCard(
  String resident,
  String address,
  String price,
  String time,
) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
    child: Container(
      padding: const EdgeInsets.only(left: 20),
      height: 80,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          resident,
                          textAlign: TextAlign.end,
                          style: const TextStyle(
                              fontSize: 16,
                              color: primaryColor,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          address,
                          textAlign: TextAlign.end,
                          style: const TextStyle(
                              fontSize: 12,
                              color: primaryDark,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text(
                        price,
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      time,
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget buildStaffCard(
  String visitor,
  String resident,
  String time,
  String address,
) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
    child: Container(
      padding: const EdgeInsets.only(left: 20),
      height: 80,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          visitor,
                          textAlign: TextAlign.end,
                          style: const TextStyle(
                              fontSize: 16,
                              color: primaryColor,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'from ' + resident,
                          textAlign: TextAlign.end,
                          style: const TextStyle(
                              fontSize: 12,
                              color: primaryDark,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text(
                        time,
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      address,
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}
