import 'package:flutter/material.dart';
import 'package:quickserve/config/constants.dart';
import 'package:quickserve/config/global_style.dart';
import 'package:quickserve/library/smooth_star_rating/smooth_star_rating.dart';
import 'package:quickserve/reusables/global_function.dart';
import 'package:quickserve/reusables/global_widget.dart';

class AddAReviewPage extends StatefulWidget {
  const AddAReviewPage({Key? key}) : super(key: key);

  @override
  State<AddAReviewPage> createState() => _AddAReviewPageState();
}

class _AddAReviewPageState extends State<AddAReviewPage> {
  // initialize global function and global widget
  final _globalFunction = GlobalFunction();
  final _globalWidget = GlobalWidget();

  double _rating = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            backgroundColor: primaryColor,
            elevation: 0,
            title: const Text('Add a review'),
          ),
        ),
        body: ListView(
          children: [
            Container(
                margin: EdgeInsets.all(24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    /*ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      child: buildCacheNetworkImage(width: boxImageSize, height: boxImageSize, url: widget.image)),
                 */
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Rate your food',
                            style: GlobalStyle.productName,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    )
                  ],
                )),
            Divider(
              height: 0,
              color: Colors.grey[400],
            ),
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 32),
                child: Text('Rate food',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 32),
                child: SmoothStarRating(
                  rating: 5,
                  isReadOnly: false,
                  size: 40,
                  filledIconData: Icons.star,
                  defaultIconData: Icons.star_border,
                  color: Colors.yellow[700],
                  borderColor: Colors.yellow[700],
                  starCount: 5,
                  allowHalfRating: false,
                  spacing: 1,
                  onRated: (value) {
                    _rating = value;
                    print("rating value -> $_rating");
                    // print("rating value dd -> ${value.truncate()}");
                  },
                )),
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 32, left: 24, right: 24),
                child: Text('Review Message')),
            Container(
              margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: TextField(
                maxLines: null,
                decoration: InputDecoration(
                    focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: primaryColor, width: 2.0)),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFCCCCCC)),
                    ),
                    labelText: 'Review',
                    labelStyle: TextStyle(color: grey)),
              ),
            ),
          ],
        ));
  }

  Widget createRatingBar(double rating) {
    return Row(
      children: [
        for (int i = 1; i <= rating; i++)
          Icon(Icons.star, color: Colors.yellow[700], size: 12),
        for (int i = 1; i <= (5 - rating); i++)
          Icon(Icons.star_border, color: Colors.yellow[700], size: 12),
      ],
    );
  }
}
