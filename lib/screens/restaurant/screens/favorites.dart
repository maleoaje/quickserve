import 'package:flutter/material.dart';
import 'package:quickserve/config/global_style.dart';

class FavoritesPageRestaurants extends StatefulWidget {
  const FavoritesPageRestaurants({Key? key}) : super(key: key);

  @override
  _FavoritesPageRestaurantsState createState() =>
      _FavoritesPageRestaurantsState();
}

class _FavoritesPageRestaurantsState extends State<FavoritesPageRestaurants> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Saved',
              style: GlobalStyle.pageTitle,
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 210,
              child: buildRestaurantCard('image', 'restaurant', 'restDesc',
                  'restDist', 'ratings', 'delivery'),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 210,
              child: buildRestaurantCard('image', 'restaurant', 'restDesc',
                  'restDist', 'ratings', 'delivery'),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 210,
              child: buildRestaurantCard('image', 'restaurant', 'restDesc',
                  'restDist', 'ratings', 'delivery'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRestaurantCard(String image, String restaurant, String restDesc,
      String restDist, String ratings, String delivery) {
    return SizedBox(
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            height: 140,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
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
