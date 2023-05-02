// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/widget/appbar.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  _itemPageState createState() => _itemPageState();
}

// ignore: camel_case_types
class _itemPageState extends State<ItemPage> {
  bool valueFirst = false;
  bool valueSecond = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 4),
        child: ListView(
          children: [
            AppBarWidget(),
            Padding(
              padding: EdgeInsets.only(top: 0, left: 16, right: 16),
              child: Image.asset(
                "assets/real/hamburger.jpg",
                height: 250,
              ),
            ),
            Arc(
              edge: Edge.TOP,
              arcType: ArcType.CONVEY,
              height: 30,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 26, bottom: 10, left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Large Big Tasty Hot Burger",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                      Text(
                        "\$10",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 16),
              child: Container(
                child: Text(
                  "Extras",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Checkbox(
                        value: this.valueFirst,
                        activeColor: Colors.red,
                        onChanged: (value) {
                          setState(() {
                            valueFirst = value!;
                          });
                        }),
                    Checkbox(
                        value: this.valueSecond,
                        activeColor: Colors.red,
                        onChanged: (value) {
                          setState(() {
                            valueSecond = value!;
                          });
                        }),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Mayonnise",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Text(
                      "Spices",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
                SizedBox(width: 180),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "\$0.60",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 28,
                      //width: 300,
                    ),
                    Text(
                      "\$0.10",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              children: [
                Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(
                      CupertinoIcons.minus,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "2",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                    ),
                    SizedBox(width: 20),
                    Icon(
                      CupertinoIcons.plus,
                      color: Colors.black,
                    ),
                    SizedBox(width: 40),
                    Container(
                      width: 180,
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 4),
                        child: Text(
                          "Add Cart - \$10.10",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.pink,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
