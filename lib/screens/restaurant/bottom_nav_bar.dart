import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quickserve/config/constants.dart';
import 'package:quickserve/screens/restaurant/screens/account.dart';
import 'package:quickserve/screens/restaurant/screens/favorites.dart';
import 'package:quickserve/screens/restaurant/screens/home.dart';
import 'package:quickserve/screens/restaurant/screens/order_history.dart';
import 'package:quickserve/screens/restaurant/screens/search.dart';

class BottomNavBarRestaurant extends StatefulWidget {
  const BottomNavBarRestaurant({Key? key}) : super(key: key);

  @override
  _BottomNavBarRestaurantState createState() => _BottomNavBarRestaurantState();
}

class _BottomNavBarRestaurantState extends State<BottomNavBarRestaurant> {
  late PageController _pageController;
  int _currentIndex = 0;

  // Pages if you click bottom navigation
  final List<Widget> _contentPages = <Widget>[
    const HomePageRestaurant(),
    const FavoritesPageRestaurants(),
    const SearchPageRestaurant(),
    const OrderHistoryRestaurant(),
    const AccountPageRestaurants()
  ];

  @override
  void initState() {
    // set initial pages for navigation to home page
    _pageController = PageController(initialPage: 0);
    _pageController.addListener(_handleTabSelection);
    super.initState();
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  // this function is used for exit the application, user must click back button two times
  DateTime? _currentBackPressTime;
  Future<bool> _onWillPop() {
    DateTime now = DateTime.now();
    if (_currentBackPressTime == null ||
        now.difference(_currentBackPressTime!) > const Duration(seconds: 2)) {
      _currentBackPressTime = now;
      Fluttertoast.showToast(
          msg: 'Press back again to select service',
          backgroundColor: primaryColor,
          toastLength: Toast.LENGTH_LONG);
      return Future.value(false);
    }
    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          backgroundColor: primaryColor,
          elevation: 0,
        ),
      ),
      body: WillPopScope(
        onWillPop: _onWillPop,
        child: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: _contentPages.map((Widget content) {
            return content;
          }).toList(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: primaryColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (value) {
          _currentIndex = value;
          _pageController.jumpToPage(value);
          // this unfocus is to prevent show keyboard in the wishlist page when focus on search text field
          FocusScope.of(context).unfocus();
        },
        selectedFontSize: 12,
        unselectedFontSize: 10,
        elevation: 2,
        iconSize: 28,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home,
                size: 25,
                color: _currentIndex == 0 ? primaryColor : primaryDark),
          ),
          BottomNavigationBarItem(
            label: 'Saved',
            icon: Icon(Icons.favorite,
                size: 25,
                color: _currentIndex == 1 ? primaryColor : primaryDark),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(Icons.search,
                size: 25,
                color: _currentIndex == 2 ? primaryColor : primaryDark),
          ),
          BottomNavigationBarItem(
            label: 'Order History',
            icon: Icon(Icons.history_edu,
                size: 25,
                color: _currentIndex == 3 ? primaryColor : primaryDark),
          ),
          BottomNavigationBarItem(
            label: 'Account',
            icon: Icon(Icons.manage_accounts,
                size: 25,
                color: _currentIndex == 4 ? primaryColor : primaryDark),
          ),
        ],
      ),
    );
  }
}
