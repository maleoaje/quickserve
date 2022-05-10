import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:quickserve/config/constants.dart';
import 'package:quickserve/screens/delivery/screens/account_screens/change_password.dart';

class PersonalInformaton extends StatefulWidget {
  const PersonalInformaton({Key? key}) : super(key: key);

  @override
  _PersonalInformatonState createState() => _PersonalInformatonState();
}

class _PersonalInformatonState extends State<PersonalInformaton> {
  final TextEditingController _etFirstName = TextEditingController();
  final TextEditingController _etLastName = TextEditingController();
  final TextEditingController _etPhone = TextEditingController();
  final TextEditingController _etEmail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: primaryColor,
          elevation: 0,
          title: const Text('Personal Information'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const Text(
              'Edit Personal info.',
              style: TextStyle(
                  color: primaryDark,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) return "Enter First Name";
                        return null;
                      },
                      textInputAction: TextInputAction.next,
                      cursorColor: primaryColor,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.text,
                      controller: _etFirstName,
                      style: const TextStyle(color: primaryDark, fontSize: 14),
                      decoration: const InputDecoration(
                        fillColor: Color.fromARGB(87, 224, 224, 224),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            borderSide:
                                BorderSide(color: primaryDark, width: 0)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          borderSide: BorderSide(
                            width: 2,
                            color: Color(0xFFCCCCCC),
                          ),
                        ),
                        labelText: 'John',
                        labelStyle: TextStyle(
                          color: primaryDark,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) return "Enter First Name";
                        return null;
                      },
                      textInputAction: TextInputAction.next,
                      cursorColor: primaryColor,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.text,
                      controller: _etLastName,
                      style: const TextStyle(color: primaryDark, fontSize: 14),
                      decoration: const InputDecoration(
                        fillColor: Color.fromARGB(87, 224, 224, 224),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            borderSide:
                                BorderSide(color: primaryDark, width: 0)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          borderSide: BorderSide(
                            width: 2,
                            color: Color(0xFFCCCCCC),
                          ),
                        ),
                        labelText: 'Doe',
                        labelStyle: TextStyle(
                          color: primaryDark,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) return "Enter Phone Number";
                return null;
              },
              textInputAction: TextInputAction.next,
              cursorColor: primaryColor,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.phone,
              controller: _etPhone,
              style: const TextStyle(color: primaryDark, fontSize: 14),
              decoration: const InputDecoration(
                fillColor: Color.fromARGB(87, 224, 224, 224),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    borderSide: BorderSide(color: primaryDark, width: 0)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  borderSide: BorderSide(
                    width: 2,
                    color: Color(0xFFCCCCCC),
                  ),
                ),
                labelText: '0813 254 7459',
                labelStyle: TextStyle(
                  color: primaryDark,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) return "Enter Email";
                return null;
              },
              textInputAction: TextInputAction.next,
              cursorColor: primaryColor,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.text,
              controller: _etEmail,
              style: const TextStyle(color: primaryDark, fontSize: 14),
              decoration: const InputDecoration(
                fillColor: Color.fromARGB(87, 224, 224, 224),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    borderSide: BorderSide(color: primaryDark, width: 0)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  borderSide: BorderSide(
                    width: 2,
                    color: Color(0xFFCCCCCC),
                  ),
                ),
                labelText: 'johndoe@email.com',
                labelStyle: TextStyle(
                  color: primaryDark,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) =>
                            const Color.fromARGB(255, 221, 221, 221),
                      ),
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ChangePasswordPage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Change Password',
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
