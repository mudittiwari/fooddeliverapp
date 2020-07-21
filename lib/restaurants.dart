import 'package:flutter/material.dart';
import 'package:mudit/second.dart';
import 'main.dart';
import 'cartpage.dart';
class restaurants extends StatefulWidget {
  @override
  _restaurantsState createState() => _restaurantsState();
}

class _restaurantsState extends State<restaurants> {
  Widget restaurants()
  {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange[100],
          borderRadius: BorderRadius.circular(16.0),
        ),
        height: 150.0,
        child: Row(
          children: <Widget>[
            ClipOval(
              child: Image(
                image:AssetImage("assets/images/second.jpg"),
                height: 80.0,
                width: 80.0,
                fit: BoxFit.fill,
                ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "Sai Bakers",
                        style: TextStyle(
                          color: Colors.brown,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5.0,left: 10.0,top: 3.0,bottom: 3.0),
                      child: Text(
                        "this is the best restaurant in the city. specialised in patties and cakes",
                        style: TextStyle(
                          color: Colors.brown,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(
                          builder: (context)=>secondpage(),
                          ));
                      },
                      child: Text("Visit",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      splashColor: Colors.orange[100],
                      color: Colors.brown,
                    ),
                  ),
                ],
              ),
            ),
          ]
      ),
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        title: Text(
          "Twiggy",
          style: TextStyle(
            color: Colors.brown,
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Colors.orange[100],
        actions: <Widget>[
          SizedBox(
            width: 50.0,
            child: InkWell(
              child: Icon(Icons.search),
            ),
          ),
          SizedBox(
            width: 50.0,
            child: InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(
                    builder:(context)=>cartpage(),
                  ));
              },
              child: Icon(Icons.shopping_cart),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.orange[100],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Twiggy",
                        style: TextStyle(
                          color: Colors.brown,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.orange[100],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ListTile(
                      trailing: Icon(Icons.home),
                      title: Text(
                        "Home",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>myapp(),
                          ));
                      },
                    ),
                    ListTile(
                      trailing: Icon(Icons.restaurant_menu),
                      title: Text(
                        "Restaurants",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                        ),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      trailing: Icon(Icons.shopping_cart),
                      title: Text(
                        "Cart",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                        ),
                      ),
                      onTap: (){
                         Navigator.push(context,MaterialPageRoute(
                    builder:(context)=>cartpage(),
                  ));
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.orange[100],
                alignment: Alignment.bottomLeft,
                child: ListTile(
                  title: Text(
                    "Logout",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.topCenter,
                color: Colors.orange[50],
                child: Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: Text(
                    "Restaurants",
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                ),
              ),
            ),
          ),
          Container(
            child: Expanded(
              flex: 6,
              child: Container(
                child: ListView(
                  children: <Widget>[
                    restaurants(),
                    restaurants(),
                    restaurants(),
                    restaurants(),
                    restaurants(),
                    restaurants(),
                    restaurants(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}