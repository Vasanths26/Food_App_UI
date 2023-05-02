import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularWidget extends StatelessWidget {
  const PopularWidget({Key? key}) : super(key: key);

  foodItem(String text, image, rate) {
    return InkWell(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 7),
        child: Container(
          height: 225,
          width: 175,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/real/$image.jpg",
                    height: 130,
                  ),
                ),
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(height: 4),
                Text(
                  "Taste our $text",
                  style: const TextStyle(fontSize: 15, color: Colors.black),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      rate,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    const Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                      size: 26,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "itemPage");
              },
              child: foodItem("Hot Burger", "hamburger", "\$10"),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "itemPage");
              },
              child: foodItem("Pizza", "pizza2", "\$20"),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "itemPage");
              },
              child: foodItem("Rice", "rice2", "\$40"),
            )
          ],
        ),
      ),
    );
  }
}
