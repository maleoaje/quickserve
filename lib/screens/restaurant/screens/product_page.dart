import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:quickserve/config/constants.dart';
import 'package:quickserve/config/global_style.dart';
import 'package:quickserve/screens/review.dart';

class ProductPage extends StatefulWidget {
  final String title;
  const ProductPage({Key? key, this.title = ''}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
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
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(
              height: 0,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.22,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  /*image: DecorationImage(
                    image: AssetImage(
                      '',
                    ),
                    fit: BoxFit.cover),*/
                  ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_outlined,
                        color: black,
                        size: 30,
                      ),
                    ),
                  ),
                  const Center(
                    child: Icon(Icons.camera),
                  ),
                  const Positioned(
                    bottom: 0,
                    left: 0,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Color.fromARGB(255, 213, 213, 213),
                      /*backgroundImage: NetworkImage(
                                '',
                              ),*/
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  widget.title,
                  style: GlobalStyle.pageTitle,
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'Fried Chicken & fries',
                  style: GlobalStyle.restaurantDesc,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '0',
                  style: GlobalStyle.restaurantDesc,
                ),
                Icon(
                  Icons.star,
                  size: 15,
                  color: Colors.grey,
                ),
                Text(
                  ' (0 ratings)',
                  style: GlobalStyle.restaurantDesc,
                ),
                Text(
                  ' 0km',
                  style: GlobalStyle.restaurantDesc,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 1, color: Colors.grey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "N0",
                          style: GlobalStyle.h4,
                        ),
                        Text(
                          "delivery fee on N1000",
                          style: GlobalStyle.normalText2,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "0 mins",
                          style: GlobalStyle.h4,
                        ),
                        Text(
                          "delivery time",
                          style: GlobalStyle.normalText2,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  'Featured items',
                  style: GlobalStyle.subTitle,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildFeaturedItemsCard(
                    'image',
                    'Product name',
                    'price',
                  ),
                  buildFeaturedItemsCard(
                    'image',
                    'Product name',
                    'price',
                  ),
                  buildFeaturedItemsCard(
                    'image',
                    'Product name',
                    'price',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              color: Colors.grey,
              height: 1,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Reviews',
                  style: GlobalStyle.subTitle,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  '0',
                  style: GlobalStyle.restaurantDesc,
                ),
                Icon(
                  Icons.star,
                  size: 15,
                  color: Colors.yellow[700],
                ),
                Text(
                  ' (0 ratings)',
                  style: GlobalStyle.restaurantDesc,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 90,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const AddAReviewPage()));
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width * 0.23,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 1, color: Colors.grey),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.add_circle_outline),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Add a review',
                              style: GlobalStyle.normalText2,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  buildReviewCard('name', 'date', 'description'),
                  buildReviewCard('name', 'date', 'description'),
                  buildReviewCard('name', 'date', 'description'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Text(
                  'Full Menu',
                  style: GlobalStyle.subTitle,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            buildMenuItem('food', 'price', 'description'),
            buildMenuItem('food', 'price', 'description'),
            buildMenuItem('food', 'price', 'description'),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Text(
                  'Sub Category',
                  style: GlobalStyle.subTitle,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            buildMenuItem('food', 'price', 'description'),
            buildMenuItem('food', 'price', 'description'),
            buildMenuItem('food', 'price', 'description'),
          ],
        ),
      ),
    );
  }

  Widget buildFeaturedItemsCard(String image, String product, String price) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: SizedBox(
        height: 160,
        width: MediaQuery.of(context).size.width * 0.35,
        child: Column(
          children: [
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                /*image: DecorationImage(
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.cover),*/
                color: Color.fromARGB(255, 235, 235, 235),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product,
                  style: GlobalStyle.restaurantTitle,
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
                  price,
                  style: GlobalStyle.restaurantDesc,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildReviewCard(String name, String date, String description) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 1, color: Colors.grey),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [Text(name)],
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[700],
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow[700],
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow[700],
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow[700],
                  size: 15,
                ),
                Text(' $date')
              ],
            ),
            Row(
              children: [Text(description)],
            )
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(String food, String price, String description) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    food,
                    textAlign: TextAlign.left,
                    style: GlobalStyle.productName,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    price,
                    textAlign: TextAlign.left,
                    style: GlobalStyle.productPrice,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    description,
                    textAlign: TextAlign.left,
                    style: GlobalStyle.productDesc,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 120,
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 235, 235, 235),
              borderRadius: BorderRadius.circular(15),
            ),
          )
        ],
      ),
    );
  }
}
