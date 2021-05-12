import 'package:flutter/material.dart';

class ProductDetiles extends StatefulWidget {
  @override
  _ProductDetilesState createState() => _ProductDetilesState();
}

class _ProductDetilesState extends State<ProductDetiles> {
  Widget HeaterBuild() {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[100],
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1)),
                ]),
            child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.red,
                ),
                onPressed: () {}),
          ),
          Expanded(child: Text("")),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[100],
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1)),
                ]),
            child: IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.red,
                ),
                onPressed: () {}),
          ),
        ],
      ),
    );
  }

  Widget ImageProduct() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HeaterBuild(),
          ImageProduct(),
        ],
      ),
    );
  }
}
