import 'package:flutter/material.dart';
import 'main.dart';
import 'restaurants.dart';
class cartpage extends StatefulWidget {
  @override
  _cartpageState createState() => _cartpageState();
}

class _cartpageState extends State<cartpage> {

  Widget items() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        //alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.orange[100],
            borderRadius: BorderRadius.circular(16.0)),
        height: 100.0,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: <Widget>[
              ClipOval(
                child: Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Image(
                      height: 80.0,
                      width: 80.0,
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/images/patties.jpg",
                      )),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Veg Patties",
                            style: TextStyle(
                              color: Colors.brown,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Price:49",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.brown,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 8.0, bottom: 8.0),
                            child: IconButton(
                              color: Colors.brown,
                              tooltip: "add to cart",
                              iconSize: 29.0,
                              onPressed: () {},
                              icon: Icon(Icons.remove_shopping_cart),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
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
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>restaurants(),
                          ));
                      },
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
                      onTap: (){},
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
      appBar: AppBar(
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
              child: Icon(Icons.shopping_cart),
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width*1,
              //color: Colors.blueAccent,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          color: Colors.orange[50],
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(top:15.0,bottom: 15.0),
                            child: Text(
                              "Shopping Cart",
                              style: TextStyle(
                                color: Colors.brown,
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                              ),
                              ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child:ListView(
                    children: <Widget>[
                      items(),
                      items(),
                      items(),
                      items(),
                      items(),
                      items(),
                      items(),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: RaisedButton(
                                  color: Colors.yellowAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  elevation: 5.0,
                                  onPressed: (){},
                                  padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 12.0),
                                  child: Text(
                                    "Checkout",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.brown,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                  ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  )
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
