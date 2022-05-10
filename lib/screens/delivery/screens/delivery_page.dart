import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:quickserve/config/constants.dart';
import 'package:quickserve/config/global_style.dart';

class DeliveryDetailsPage extends StatefulWidget {
  final String pageTitle;
  const DeliveryDetailsPage({Key? key, this.pageTitle = ""}) : super(key: key);

  @override
  State<DeliveryDetailsPage> createState() => _DeliveryDetailsPageState();
}

class _DeliveryDetailsPageState extends State<DeliveryDetailsPage> {
  final TextEditingController _etAddress = TextEditingController();
  final TextEditingController _etPhone = TextEditingController();
  final TextEditingController _etNote = TextEditingController();
  final TextEditingController _etPromoCode = TextEditingController();
  final TextEditingController _etOtherAmount = TextEditingController();
  Color tipsColor = Colors.transparent;
  int currentTip = 0;

  List<String> tips = ['N200', 'N400', 'N600', 'other'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: white,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: black,
            ),
          ),
          title: Text(
            widget.pageTitle,
            style: TextStyle(
              color: black,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: const Center(
                child: Icon(
                  Icons.camera_alt,
                  color: black,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Delivery Time: ',
                  style: GlobalStyle.normalText,
                ),
                Row(
                  children: const [
                    Icon(Icons.access_time, size: 20),
                    Text(" 45-50 Mins", style: GlobalStyle.normalText)
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Text(
                  'Delivery Details',
                  style: GlobalStyle.h3,
                )
              ],
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) return "enter ${widget.pageTitle} Address";
                return null;
              },
              textInputAction: TextInputAction.next,
              cursorColor: primaryColor,
              textAlign: TextAlign.start,
              keyboardType: TextInputType.text,
              controller: _etAddress,
              style: const TextStyle(color: primaryDark, fontSize: 14),
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  LineIcons.home,
                  color: primaryDark,
                ),
                fillColor: const Color(0xffe0e0e0),
                focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: primaryDark, width: 0)),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: Color(0xFFCCCCCC),
                  ),
                ),
                labelText: '${widget.pageTitle} Address',
                labelStyle: const TextStyle(
                  color: primaryDark,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) return "enter contact nnumber";
                return null;
              },
              textInputAction: TextInputAction.next,
              cursorColor: primaryColor,
              textAlign: TextAlign.start,
              keyboardType: TextInputType.phone,
              controller: _etPhone,
              style: const TextStyle(color: primaryDark, fontSize: 14),
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  LineIcons.phone,
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
                labelText: 'Contact Number',
                labelStyle: TextStyle(
                  color: primaryDark,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              textInputAction: TextInputAction.next,
              cursorColor: primaryColor,
              textAlign: TextAlign.start,
              keyboardType: TextInputType.text,
              controller: _etNote,
              style: const TextStyle(color: primaryDark, fontSize: 14),
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  LineIcons.stickyNote,
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
                labelText: 'Leave note for Driver',
                labelStyle: TextStyle(
                  color: primaryDark,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Text(
                  'Promo Code',
                  style: GlobalStyle.h3,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    cursorColor: primaryColor,
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.emailAddress,
                    controller: _etPromoCode,
                    style: const TextStyle(color: primaryDark, fontSize: 14),
                    decoration: const InputDecoration(
                      fillColor: Color(0xffe0e0e0),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        borderSide:
                            BorderSide(color: Color(0xffe0e0e0), width: 0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        borderSide:
                            BorderSide(color: Color(0xffe0e0e0), width: 0),
                      ),
                      labelStyle: TextStyle(
                        color: primaryDark,
                      ),
                    ),
                  ),
                ),
                OutlinedButton(
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
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Apply',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: primaryDark),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Text(
                  'Payment Details',
                  style: GlobalStyle.h3,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Subtotal',
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'N900',
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Delivery Fee ',
                          ),
                          Icon(
                            Icons.info_outlined,
                            size: 20,
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'N900',
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Fee & Estimated Tax ',
                          ),
                          Icon(
                            Icons.info_outlined,
                            size: 20,
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'N900',
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Text(
                  'Payment ',
                  style: GlobalStyle.h3,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
              child: Row(
                children: [
                  Row(
                    children: [
                      Text(
                        'Mastercard ',
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '**** 2502',
                        style: GlobalStyle.liteText,
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Row(
                  children: [
                    Text(
                      'Server Tips ',
                    ),
                    Icon(
                      Icons.info_outlined,
                      size: 20,
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xffe0e0e0),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentTip = 0;
                          });
                        },
                        child: Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            height: 40,
                            decoration: BoxDecoration(
                              color:
                                  currentTip == 0 ? black : Color(0xffe0e0e0),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                                child: Text(
                              'N 200',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: currentTip == 0 ? white : black),
                            ))),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentTip = 1;
                          });
                        },
                        child: Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            height: 40,
                            decoration: BoxDecoration(
                              color:
                                  currentTip == 1 ? black : Color(0xffe0e0e0),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                                child: Text(
                              'N 400',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: currentTip == 1 ? white : black),
                            ))),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentTip = 2;
                          });
                        },
                        child: Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            height: 40,
                            decoration: BoxDecoration(
                              color:
                                  currentTip == 2 ? black : Color(0xffe0e0e0),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                                child: Text(
                              'N 600',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: currentTip == 2 ? white : black),
                            ))),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentTip = 3;
                          });
                          _onOtherButtonPressed();
                        },
                        child: Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            height: 40,
                            decoration: BoxDecoration(
                              color:
                                  currentTip == 3 ? black : Color(0xffe0e0e0),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                                child: Text(
                              'other',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: currentTip == 3 ? white : black),
                            ))),
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Total (including tip) ',
                            style: GlobalStyle.h3,
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'N 900',
                        style: GlobalStyle.h3,
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(1),
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) => primaryDark,
                  ),
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )),
                ),
                onPressed: () {
                  /*Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const RegisterSuccessful()));
                    FocusScope.of(context).unfocus();*/
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        'Pay With Card  ',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      Icon(
                        Icons.credit_card_sharp,
                        color: white,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }

  void _onOtherButtonPressed() {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: _buildOtherInput(),
        );
      },
    );
  }

  Widget _buildOtherInput() {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        const Center(
          child: Text(
            'Enter Other Amount',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        const Divider(
          thickness: 0.2,
          color: Colors.grey, // The color to use when painting the line.
          height: 5, // The divider's height extent.
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          textInputAction: TextInputAction.next,
          cursorColor: primaryColor,
          textAlign: TextAlign.start,
          keyboardType: TextInputType.number,
          controller: _etOtherAmount,
          style: const TextStyle(color: primaryDark, fontSize: 14),
          decoration: InputDecoration(
            prefixIcon: const Icon(
              LineIcons.moneyBill,
              color: primaryDark,
            ),
            fillColor: const Color(0xffe0e0e0),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: primaryDark, width: 0)),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: Color(0xFFCCCCCC),
              ),
            ),
            labelText: '',
            labelStyle: const TextStyle(
              color: primaryDark,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: TextButton(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(1),
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) => primaryDark,
              ),
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              )),
            ),
            onPressed: () {
              /*Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const RegisterSuccessful()));
                    FocusScope.of(context).unfocus();*/
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Set tip',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
