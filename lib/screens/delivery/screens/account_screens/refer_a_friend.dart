import 'package:flutter/material.dart';
import 'package:quickserve/config/constants.dart';

class ReferAFriend extends StatefulWidget {
  const ReferAFriend({Key? key}) : super(key: key);

  @override
  _ReferAFriendState createState() => _ReferAFriendState();
}

class _ReferAFriendState extends State<ReferAFriend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: primaryColor,
          elevation: 0,
          title: const Text('Refer A Friend'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: Center(
          child: Column(
            children: [
              const Text(
                'Share & Earn NX,XXX',
                style: TextStyle(
                    color: primaryDark,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Share your code with friends to give them 2 free deliveries, valid for 14 days on orders above NX,XXX. When they place their first order, you will get NXXX off products, valid for 14 days on orders above N3000 ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: primaryDark,
                    fontSize: 14,
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 35,
              ),
              const Text(
                'Share your invite code',
                style: TextStyle(
                    color: primaryDark,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(70, 0, 70, 0),
                child: OutlinedButton(
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                      const BorderSide(color: primaryDark, width: 1),
                    ),
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) => Colors.transparent,
                    ),
                    overlayColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide.none)),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'lit.ly/iubdfob',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Color.fromARGB(255, 162, 162, 162)),
                          textAlign: TextAlign.center,
                        ),
                        Icon(
                          Icons.copy,
                          color: Colors.grey,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
