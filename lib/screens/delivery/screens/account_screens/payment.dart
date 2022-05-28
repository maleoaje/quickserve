import 'package:flutter/material.dart';
import 'package:quickserve/config/constants.dart';
import 'package:quickserve/screens/delivery/screens/account_screens/add_card.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  String _selectedAddress = 'saved address';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: primaryColor,
          elevation: 0,
          title: const Text('Payment'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            ListTile(
              leading: Radio<String>(
                fillColor: MaterialStateProperty.all(primaryDark),
                value: 'N0 5, Second Floor, Garki Abuja',
                groupValue: _selectedAddress,
                onChanged: (value) {
                  setState(() {
                    _selectedAddress = value!;
                  });
                },
              ),
              title: const Text('SET AS PRIMARY'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(80, 0, 20, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/mastercard.png',
                            width: 40,
                          ),
                          const SizedBox(width: 8),
                          const Text('Card'),
                        ],
                      ),
                      const Icon(
                        Icons.arrow_right_alt_rounded,
                        color: primaryDark,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('****  ****  ****  1024',
                          style: TextStyle(fontSize: 20)),
                      Row(
                        children: [
                          Image.asset(
                            'assets/mastercard.png',
                            width: 30,
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Radio<String>(
                fillColor: MaterialStateProperty.all(primaryDark),
                value: 'N0 5, Second Floor, Garki Abuja',
                groupValue: _selectedAddress,
                onChanged: (value) {
                  setState(() {
                    _selectedAddress = value!;
                  });
                },
              ),
              title: const Text('SET AS PRIMARY'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(80, 0, 20, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/visa.png',
                            width: 40,
                          ),
                          const SizedBox(width: 8),
                          const Text('Card'),
                        ],
                      ),
                      const Icon(
                        Icons.arrow_right_alt_rounded,
                        color: primaryDark,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('****  ****  ****  1024',
                          style: TextStyle(fontSize: 20)),
                      Row(
                        children: [
                          Image.asset(
                            'assets/visa.png',
                            width: 30,
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) =>
                            const Color.fromARGB(0, 221, 221, 221),
                      ),
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const AddCard()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Add New Card',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: primaryDark),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
