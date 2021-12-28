import 'package:flutter/material.dart';
import 'package:eshop/components/horizontal_listview.dart';
import 'package:eshop/components/products.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:eshop/pages/cart.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Widget image_carousel = new Container(
    //   height: 200.0,
    //   child: carousel(
    //     BoxFit: BoxFit.cover,
    //     images: [
    //       AssetImage('assets/images/c1.jpg'),
    //       AssetImage('assets/images/m1.jpeg'),
    //       AssetImage('assets/images/w3.jpeg'),
    //       AssetImage('assets/images/w4.jpeg'),
    //       AssetImage('assets/images/w2.jpg'),
    //     ],
    //     autoplay: false,
    //     animationCurve: Curves.fastOutSlowIn,
    //     animationDuration: Duration(milliseconds: 1000),
    //   ),
    // );

    return Scaffold(
        appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Colors.red,
          title: Text("ShopApp"),
          actions: <Widget>[
            new IconButton(
                icon: Icon(Icons.search, color: Colors.white),
                onPressed: () {}),
            new IconButton(
                icon: Icon(Icons.shopping_cart, color: Colors.white),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new Cart()));
                })
          ],
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              //header
              new UserAccountsDrawerHeader(
                accountName: Text('Caxton Mbuvi'),
                accountEmail: Text('caxton@gmail.com'),
                currentAccountPicture: GestureDetector(
                    child: new CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Icon(Icons.person, color: Colors.white))),
                decoration: new BoxDecoration(color: Colors.red),
              ),
              //body

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Home Page'),
                  leading: Icon(
                    Icons.home,
                    color: Colors.red,
                  ),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('My Account'),
                  leading: Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('My Orders'),
                  leading: Icon(
                    Icons.shopping_basket,
                    color: Colors.red,
                  ),
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new Cart()));
                },
                child: ListTile(
                  title: Text('shopping Cart'),
                  leading: Icon(
                    Icons.shopping_cart,
                    color: Colors.red,
                  ),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Favourites'),
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ),

              Divider(),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings, color: Colors.blue),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.help, color: Colors.green),
                ),
              ),
            ],
          ),
        ),
        body: new ListView(
          children: <Widget>[
            //image carousel begins here
            // image_carousel,
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: new Text('categories')),
            ),

            //Horizontal List view begins here
            HorizontalList(),

            //padding Widget
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: new Text('Recent Products')),
            ),

            //grid view
            Container(
              height: 320.0,
              child: Products(),
            )
          ],
        ));
  }
}
