import 'package:flutter/material.dart';
import 'package:quickserve/config/global_style.dart';

class BakeryPage extends StatefulWidget {
  const BakeryPage({Key? key}) : super(key: key);

  @override
  State<BakeryPage> createState() => _BakeryPageState();
}

class _BakeryPageState extends State<BakeryPage> {
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
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView(
        children: [
          const Text(
            'Most Visited Bakeries',
            style: GlobalStyle.subTitle,
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildRestaurantCard(
                    'assets/kfc.png',
                    'KFC',
                    'Fried chicken, Family Meals',
                    '2km-10km',
                    '4.1 -5.0 stars',
                    'free delivery'),
                const SizedBox(
                  width: 10,
                ),
                buildRestaurantCard(
                    'assets/chickenrepublic.png',
                    'Chicken Public',
                    'Fried chicken, Family Meals',
                    '2km-10km',
                    '4.1 -5.0 stars',
                    'free delivery'),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Feeling Local',
            style: GlobalStyle.subTitle,
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildRestaurantCard(
                    'assets/kfc.png',
                    'KFC',
                    'Fried chicken, Family Meals',
                    '2km-10km',
                    '4.1 -5.0 stars',
                    'free delivery'),
                const SizedBox(
                  width: 10,
                ),
                buildRestaurantCard(
                    'assets/chickenrepublic.png',
                    'Chicken Public',
                    'Fried chicken, Family Meals',
                    '2km-10km',
                    '4.1 -5.0 stars',
                    'free delivery'),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Order Again',
            style: GlobalStyle.subTitle,
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildRestaurantCard(
                    'assets/kfc.png',
                    'KFC',
                    'Fried chicken, Family Meals',
                    '2km-10km',
                    '4.1 -5.0 stars',
                    'free delivery'),
                const SizedBox(
                  width: 10,
                ),
                buildRestaurantCard(
                    'assets/chickenrepublic.png',
                    'Chicken Public',
                    'Fried chicken, Family Meals',
                    '2km-10km',
                    '4.1 -5.0 stars',
                    'free delivery'),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Supermarket Near You',
            style: GlobalStyle.subTitle,
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildRestaurantCard(
                    'assets/kfc.png',
                    'KFC',
                    'Fried chicken, Family Meals',
                    '2km-10km',
                    '4.1 -5.0 stars',
                    'free delivery'),
                const SizedBox(
                  width: 10,
                ),
                buildRestaurantCard(
                    'assets/chickenrepublic.png',
                    'Chicken Public',
                    'Fried chicken, Family Meals',
                    '2km-10km',
                    '4.1 -5.0 stars',
                    'free delivery'),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'What People Order',
            style: GlobalStyle.subTitle,
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildRestaurantCard(
                    'assets/kfc.png',
                    'KFC',
                    'Fried chicken, Family Meals',
                    '2km-10km',
                    '4.1 -5.0 stars',
                    'free delivery'),
                const SizedBox(
                  width: 10,
                ),
                buildRestaurantCard(
                    'assets/chickenrepublic.png',
                    'Chicken Public',
                    'Fried chicken, Family Meals',
                    '2km-10km',
                    '4.1 -5.0 stars',
                    'free delivery'),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ],
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
