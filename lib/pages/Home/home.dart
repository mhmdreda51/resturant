import 'package:flutter/material.dart';
import 'package:restaurant/pages/drawer/drawer.dart';
import 'package:restaurant/pages/product/product_detiles.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _keyDrawer = GlobalKey<ScaffoldState>();
  var myarray_Product = [
    {
      "pro_Id": "1",
      "pro_name": "pro1",
      "pro_image": "lib/images/product/pro1.jpg",
      "pro_desc": "Detils Detils Detils Detils Detils Detils Detils "
    },
    {
      "pro_Id": "2",
      "pro_name": "pro2",
      "pro_image": "lib/images/product/pro2.jpg",
      "pro_desc": "Detils Detils Detils Detils Detils Detils Detils "
    },
    {
      "pro_Id": "3",
      "pro_name": "pro3",
      "pro_image": "lib/images/product/pro3.jpg",
      "pro_desc": "Detils Detils Detils Detils Detils Detils Detils "
    },
  ];
  var myarray_category = [
    {
      "cat_Id": "1",
      "cat_name": "cat1",
      "cat_image": "lib/images/category/cat1.png",
    },
    {
      "cat_Id": "2",
      "cat_name": "cat2",
      "cat_image": "lib/images/category/cat2.png",
    },
    {
      "cat_Id": "3",
      "cat_name": "cat3",
      "cat_image": "lib/images/category/cat3.png",
    },
    {
      "cat_Id": "4",
      "cat_name": "cat4",
      "cat_image": "lib/images/category/cat4.png",
    },
    {
      "cat_Id": "5",
      "cat_name": "cat5",
      "cat_image": "lib/images/category/cat5.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        key: _keyDrawer,
        endDrawer: MyDrawer(),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(top: 30.0),
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                  "توصيل الطلب الى",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 15.0),
                    child: Text(
                      "موقع الزبون",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.red,
                      ),
                      onPressed: () {}),
                ],
              ),
              new Container(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        _keyDrawer.currentState.openEndDrawer();
                      },
                      child: new Icon(
                        Icons.menu,
                        color: Colors.red,
                        size: 40,
                      ),
                    ),
                    Expanded(
                      child: new Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(25.0)),
                        child: new TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "بحث",
                            suffixIcon: Icon(Icons.search),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 110,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: myarray_category.length,
                    itemBuilder: (context, index) {
                      return SingleCategary(
                        cat_Id: myarray_category[index]["cat_Id"],
                        cat_image: myarray_category[index]["cat_image"],
                        cat_name: myarray_category[index]["cat_name"],
                      );
                    }),
              ),
              Container(
                height: 399,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: myarray_Product.length,
                    itemBuilder: (context, index) {
                      return SingleProduct(
                        pro_Id: myarray_Product[index]["pro_Id"],
                        pro_image: myarray_Product[index]["pro_image"],
                        pro_name: myarray_Product[index]["pro_name"],
                        pro_desc: myarray_Product[index]["pro_desc"],
                      );
                    }),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: Colors.red,
          selectedFontSize: 14,
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 12,
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                title: Text("الاشعارات"),
                icon: Icon(
                  Icons.notifications,
                  size: 30,
                )),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.restaurant_menu,
                size: 30,
              ),
              title: Text("العروض"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              title: Text("حسابى"),
            ),
          ],
        ),
      ),
    );
  }
}

class SingleProduct extends StatelessWidget {
  final String pro_Id;
  final String pro_name;
  final String pro_image;
  final String pro_desc;

  const SingleProduct(
      {this.pro_Id, this.pro_name, this.pro_image, this.pro_desc});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProductDetiles()));
      },
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(pro_image), fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              pro_name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              pro_desc,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

class SingleCategary extends StatelessWidget {
  final String cat_Id;
  final String cat_name;
  final String cat_image;

  const SingleCategary({this.cat_Id, this.cat_name, this.cat_image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: 10,
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.red[100]),
            child: Image.asset(cat_image),
          ),
          Text(
            cat_name,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
