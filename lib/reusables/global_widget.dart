import 'package:flutter/material.dart';
import 'package:quickserve/config/constants.dart';

class GlobalWidget {
  Widget customNotifIcon(int count, Color color) {
    return Stack(
      children: <Widget>[
        Icon(Icons.notifications, color: color),
        Positioned(
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            constraints: const BoxConstraints(
              minWidth: 14,
              minHeight: 14,
            ),
            child: Center(
              child: Text(
                count.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        )
      ],
    );
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

  Widget? buildProgressIndicator(lastData) {
    if (lastData == false) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Opacity(
            opacity: 1,
            child: Container(
              height: 20,
              width: 20,
              margin: const EdgeInsets.all(5),
              child: const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(primaryColor),
                strokeWidth: 2.0,
              ),
            ),
          ),
        ),
      );
    }
    return null;
  }

  Widget createDefaultLabel(context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(2)),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text('default',
              style: TextStyle(color: Colors.white, fontSize: 13)),
          const SizedBox(
            width: 4,
          ),
          const Icon(Icons.done, color: Colors.white, size: 11)
        ],
      ),
    );
  }
}
