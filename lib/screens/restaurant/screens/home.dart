import 'package:flutter/material.dart';
import 'package:quickserve/config/constants.dart';
import 'package:quickserve/config/global_style.dart';
import 'package:quickserve/screens/restaurant/screens/screen_tabs/bakery_tab.dart';
import 'package:quickserve/screens/restaurant/screens/screen_tabs/pharmacy_tab.dart';
import 'package:quickserve/screens/restaurant/screens/screen_tabs/restaurant_tab.dart';
import 'package:quickserve/screens/restaurant/screens/screen_tabs/supermarket_tab.dart';

class HomePageRestaurant extends StatefulWidget {
  const HomePageRestaurant({Key? key}) : super(key: key);

  @override
  _HomePageRestaurantState createState() => _HomePageRestaurantState();
}

class _HomePageRestaurantState extends State<HomePageRestaurant> {
  int currentState = 0;

  List<Widget> widgets = [
    const RestaurantPage(),
    const SuperMarketPage(),
    const PharmacyPage(),
    const BakeryPage()
  ];
  bool _fav = true;
  IconData _favIcon = Icons.favorite_border;
  void _toggleFav() {
    setState(() {
      _fav = !_fav;
      if (_fav == true) {
        _favIcon = Icons.favorite_border;
      } else {
        _favIcon = Icons.favorite;
      }
    });
  }

  int currentSelect = 0;
  int fav = 0;
  String? selectedValue;
  List<DropdownMenuItem<String>> get dropdownAddress {
    List<DropdownMenuItem<String>> address = [
      const DropdownMenuItem(
          child: Text(
            "No 5, Second Floor, Garki Abuja",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          value: "No 5, Second Floor, Garki Abuja"),
      const DropdownMenuItem(
          child: Text(
            "Block 10B, H-Close 1st Avenue, Gwarimpa, Abuja ",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          value: "Block 10B, H-Close 1st Avenue, Gwarimpa, Abuja "),
    ];
    return address;
  }

  String dropdownvalue = '5 stars';

  // List of items in our dropdown menu
  var items = [
    '5 stars',
    '4 stars',
    '3 stars',
    '2 stars',
    '1 stars',
  ];

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
        padding: const EdgeInsets.fromLTRB(15, 0, 10, 5),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.82,
                  child: DropdownButtonFormField(
                      hint: const Text('Choose Address'),
                      decoration: const InputDecoration(
                          enabledBorder: InputBorder.none,
                          border: InputBorder.none),
                      validator: (value) =>
                          value == null ? "Select Address" : null,
                      value: selectedValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue!;
                        });
                      },
                      items: dropdownAddress),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: SizedBox(
                height: 110,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentSelect = 0;
                          currentState = 0;
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color:
                                    currentSelect == 0 ? primaryColor : white,
                                borderRadius: BorderRadius.circular(80)),
                            child: Image.asset(
                              'assets/restaurant_icon.png',
                              height: 50,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Restaurant',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentSelect = 1;
                          currentState = 1;
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color:
                                    currentSelect == 1 ? primaryColor : white,
                                borderRadius: BorderRadius.circular(80)),
                            child: Image.asset(
                              'assets/supermarket.png',
                              height: 50,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Supermarket',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentSelect = 2;
                          currentState = 2;
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color:
                                    currentSelect == 2 ? primaryColor : white,
                                borderRadius: BorderRadius.circular(80)),
                            child: Image.asset(
                              'assets/pharmacy.png',
                              height: 50,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Pharmacy',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentSelect = 3;
                          currentState = 3;
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color:
                                    currentSelect == 3 ? primaryColor : white,
                                borderRadius: BorderRadius.circular(80)),
                            child: Image.asset(
                              'assets/bakery.png',
                              height: 50,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Bakery',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 30,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 40,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 218, 218, 218),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.star,
                          size: 15,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        DropdownButton(
                          hint: const Text('Ratings'),
                          // Initial Value
                          value: dropdownvalue, elevation: 0,
                          borderRadius: BorderRadius.circular(10),
                          dropdownColor:
                              const Color.fromARGB(255, 238, 238, 238),

                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),

                          // Array list of items
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: const TextStyle(fontSize: 14),
                              ),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 40,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 218, 218, 218),
                        borderRadius: BorderRadius.circular(30)),
                    child: const Center(
                      child: Text('Pickup'),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 40,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 218, 218, 218),
                        borderRadius: BorderRadius.circular(30)),
                    child: const Center(
                      child: Text('Under 30 mins'),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 40,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 218, 218, 218),
                        borderRadius: BorderRadius.circular(30)),
                    child: const Center(
                      child: Text('Nearby'),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 40,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 218, 218, 218),
                        borderRadius: BorderRadius.circular(30)),
                    child: const Center(
                      child: Text('Price'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            widgets[currentSelect]
          ],
        ),
      ),
    );
  }

  Widget buildRestaurantCard(String image, String restaurant, String restDesc,
      String restDist, String ratings, String delivery) {
    return SizedBox(
      height: 150,
      width: MediaQuery.of(context).size.width * 0.6,
      child: Column(
        children: [
          Container(
            height: 130,
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                restaurant,
                style: GlobalStyle.restaurantTitle,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _toggleFav();
                  });
                },
                child: Icon(
                  _favIcon,
                  size: 15,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                restDesc,
                style: GlobalStyle.restaurantDesc,
              ),
              Text(
                restDist,
                style: GlobalStyle.restaurantDistDelivery,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                ratings,
                style: GlobalStyle.restaurantDesc,
              ),
              Text(
                delivery,
                style: GlobalStyle.restaurantDistDelivery,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
