import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:quickserve/auth/choose_sign.dart';
import 'package:quickserve/config/constants.dart';
import 'package:quickserve/screens/delivery/screens/account_screens/address.dart';
import 'package:quickserve/screens/delivery/screens/account_screens/become_a_partner_restaurant.dart';
import 'package:quickserve/screens/delivery/screens/account_screens/become_a_qserver.dart';
import 'package:quickserve/screens/delivery/screens/account_screens/get_help.dart';
import 'package:quickserve/screens/delivery/screens/account_screens/notifications.dart';
import 'package:quickserve/screens/delivery/screens/account_screens/payment.dart';
import 'package:quickserve/screens/delivery/screens/account_screens/personal_information.dart';
import 'package:quickserve/screens/delivery/screens/account_screens/quick_points.dart';
import 'package:quickserve/screens/delivery/screens/account_screens/redeem_promo_code.dart';
import 'package:quickserve/screens/delivery/screens/account_screens/refer_a_friend.dart';

class AccountPageDelivery extends StatefulWidget {
  const AccountPageDelivery({Key? key}) : super(key: key);

  @override
  _AccountPageDeliveryState createState() => _AccountPageDeliveryState();
}

class _AccountPageDeliveryState extends State<AccountPageDelivery> {
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
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Account',
                style: TextStyle(
                    color: primaryDark,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const GetHelp()));
              },
              child: _buildSettingsCard(
                'Get Help',
                LineIcons.questionCircle,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ReferAFriend()));
              },
              child: _buildSettingsCard(
                'Refer A Friend',
                LineIcons.userFriends,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const RedeemPromoCode()));
              },
              child: _buildSettingsCard(
                'Redeem Promo Code',
                LineIcons.gift,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const QuickPoints()));
              },
              child: _buildSettingsCard(
                'Quick Points',
                LineIcons.dollarSign,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Account Settings',
                style: TextStyle(
                    color: primaryDark,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PersonalInformaton()));
              },
              child: _buildAccountSettingsCard('Personal Information',
                  LineIcons.userEdit, 'Edit your Personal information'),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Payment()));
              },
              child: _buildAccountSettingsCard('Payment', LineIcons.creditCard,
                  'Select new payment method or add new payment method'),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AddressPage()));
              },
              child: _buildAccountSettingsCard(
                  'Address', LineIcons.addressCard, 'Add or change an address'),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const NotificationsPage()));
              },
              child: _buildAccountSettingsCard(
                  'Notification', LineIcons.bellAlt, 'Manage notifications'),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'More',
                style: TextStyle(
                    color: primaryDark,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const BecomeAQServer()));
              },
              child: _buildMoreSettingsCard(
                'Become a Q-Server',
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const BecomeAQRestaurant()));
              },
              child: _buildMoreSettingsCard(
                'Become a Partner Restaurant',
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 60, 10),
              child: OutlinedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) => primaryColor,
                  ),
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) => const ChooseSign()),
                      (Route<dynamic> route) => false);
                  FocusScope.of(context).unfocus();
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Logout',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
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
      ),
    );
  }

  Widget _buildSettingsCard(
    String name,
    IconData icon,
  ) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
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

  Widget _buildAccountSettingsCard(
      String name, IconData icon, String description) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
        height: 78,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Row(
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
            Padding(
              padding: const EdgeInsets.fromLTRB(28, 0, 0, 0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  description,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMoreSettingsCard(
    String name,
  ) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
        height: 75,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 16, 10, 0),
              child: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
