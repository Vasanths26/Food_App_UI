import 'package:flutter/material.dart';

class CatagoriesWidget extends StatelessWidget {
  const CatagoriesWidget({Key? key}) : super(key: key);

  buildCat(String text) {
    return Chip(
      elevation: 10,
      backgroundColor: Colors.red,
      label: Text(
        text,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Row(
          children: [
            buildCat("Fast Food"),
            const SizedBox(width: 10),
            buildCat("Meat"),
            const SizedBox(width: 10),
            buildCat("Desserts"),
            const SizedBox(width: 10),
            buildCat("Fruit Juice"),
            const SizedBox(width: 10),
            buildCat("Veg Dish"),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
