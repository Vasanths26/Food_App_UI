import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Recommended extends StatelessWidget {
  const Recommended({Key? key}) : super(key: key);

  itemList(String image, text, rate) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 150,
        width: 380,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(children: [
          Container(
            child: Image.asset(
              "assets/real/$image.jpg",
              height: 120,
              width: 120,
            ),
          ),
          SizedBox(
            width: 4,
          ),
          Container(
            width: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  text,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Taste Our $text, We Provide Great Foods",
                  style: TextStyle(
                    fontSize: 16, //fontWeight: FontWeight.bold
                  ),
                ),
                RatingBar.builder(
                    initialRating: 4,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemSize: 18,
                    itemPadding: EdgeInsets.symmetric(horizontal: 7),
                    itemBuilder: (context, _) =>
                        Icon(Icons.star, color: Colors.red),
                    onRatingUpdate: (index) {}),
                Text(
                  rate,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                    size: 26,
                  ),
                  Icon(
                    CupertinoIcons.cart,
                    color: Colors.red,
                    size: 26,
                  ),
                ],
              )),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            itemList("pizza1", "Pizza", "\$10"),
            itemList("kfc", "KFC", "\$30"),
            itemList("biriyani", "Biriyani", "\$50")
          ],
        ),
      ),
    );
  }
}
