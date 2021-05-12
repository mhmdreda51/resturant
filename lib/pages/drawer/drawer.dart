import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  "Mhmd Reda",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                accountEmail: Text("mhmd@gmail.com",
                    style: TextStyle(color: Colors.grey[500], fontSize: 16)),
                currentAccountPicture: GestureDetector(
                  onTap: () {},
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(color: Colors.grey[100]),
              ),
              Container(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "الصفحة الرئيسية",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        leading: Icon(
                          Icons.home,
                          color: Colors.red,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 18,
                        ),
                      ),
                      Divider(
                        color: Colors.grey[400],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "حسابى",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        leading: Icon(
                          Icons.person,
                          color: Colors.red,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 18,
                        ),
                      ),
                      Divider(
                        color: Colors.grey[400],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "المفضلات",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        leading: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 18,
                        ),
                      ),
                      Divider(
                        color: Colors.grey[400],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
