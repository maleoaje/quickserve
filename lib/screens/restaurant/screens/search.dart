import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:quickserve/config/constants.dart';

class SearchPageRestaurant extends StatefulWidget {
  const SearchPageRestaurant({Key? key}) : super(key: key);

  @override
  _SearchPageRestaurantState createState() => _SearchPageRestaurantState();
}

class _SearchPageRestaurantState extends State<SearchPageRestaurant> {
  final TextEditingController _etSearch = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          backgroundColor: primaryColor,
          elevation: 0,
          title: const Text('Search'),
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
                'Search',
                style: TextStyle(
                    color: primaryDark,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) return "Address";
                  return null;
                },
                textInputAction: TextInputAction.next,
                cursorColor: primaryColor,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
                controller: _etSearch,
                style: const TextStyle(color: primaryDark, fontSize: 14),
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    LineIcons.search,
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
                  labelText: 'Search',
                  labelStyle: TextStyle(
                    color: primaryDark,
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Recent',
                style: TextStyle(
                    color: primaryDark,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
