import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:quickserve/config/constants.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  final TextEditingController _etAddress = TextEditingController();
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
          title: const Text('Address'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) return "Enter new address";
                  return null;
                },
                textInputAction: TextInputAction.next,
                cursorColor: primaryColor,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
                controller: _etAddress,
                style: const TextStyle(color: primaryDark, fontSize: 14),
                decoration: const InputDecoration(
                  suffixIcon: Icon(
                    LineIcons.plusCircle,
                    color: primaryDark,
                  ),
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
                  labelText: 'Add new Address',
                  labelStyle: TextStyle(
                    color: primaryDark,
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Set Default Address',
                style: TextStyle(
                    color: primaryDark,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              leading: Radio<String>(
                fillColor: MaterialStateProperty.all(primaryColor),
                value: 'N0 5, Second Floor, Garki Abuja',
                groupValue: _selectedAddress,
                onChanged: (value) {
                  setState(() {
                    _selectedAddress = value!;
                  });
                },
              ),
              title: const Text('N0 5, Second Floor, Garki Abuja'),
            ),
            ListTile(
              leading: Radio<String>(
                fillColor: MaterialStateProperty.all(primaryColor),
                value: 'Block 1A, 1st Avenue Gwarimpa, Abuja',
                groupValue: _selectedAddress,
                onChanged: (value) {
                  setState(() {
                    _selectedAddress = value!;
                  });
                },
              ),
              title: const Text('Block 1A, 1st Avenue Gwarimpa, Abuja'),
            ),
          ],
        ),
      ),
    );
  }
}
