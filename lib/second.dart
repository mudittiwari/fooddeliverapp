import 'package:flutter/material.dart';
import 'cartpage.dart';
import 'main.dart';
import 'restaurants.dart';
class secondpage extends StatefulWidget {
  @override
  _secondpageState createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
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
                              icon: Icon(Icons.add_shopping_cart),
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
  void cart()
  {
    Navigator.push(context, MaterialPageRoute(
      builder: (context)=>cartpage(),
      ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                      onTap: cart,
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
              onTap: cart,
              child: Icon(Icons.shopping_cart),
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.asset(
                    "assets/images/second.jpg",
                    fit: BoxFit.fill,
                    color: Colors.black38,
                    colorBlendMode: BlendMode.darken,
                  ),
                  Align(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                        color: Colors.orange[100],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Sai Bakers",
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                  child: Padding(
                padding: EdgeInsets.all(0.0),
                child: Column(
                  children: <Widget>[
                    SingleChildScrollView(
                      padding: EdgeInsets.all(0.0),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Colors.orange[100],
                            onPressed: () {},
                            child: Text(
                              "patties",
                              style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown,
                              ),
                            ),
                            padding: EdgeInsets.all(8.0),
                          ),
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Colors.orange[100],
                            onPressed: () {},
                            child: Text(
                              "pastry",
                              style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown,
                              ),
                            ),
                            padding: EdgeInsets.all(8.0),
                          ),
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Colors.orange[100],
                            onPressed: () {},
                            child: Text(
                              "cakes",
                              style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown,
                              ),
                            ),
                            padding: EdgeInsets.all(8.0),
                          ),
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Colors.orange[100],
                            onPressed: () {},
                            child: Text(
                              "sweets",
                              style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown,
                              ),
                            ),
                            padding: EdgeInsets.all(8.0),
                          ),
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Colors.orange[100],
                            onPressed: () {},
                            child: Text(
                              "pizza",
                              style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown,
                              ),
                            ),
                            padding: EdgeInsets.all(8.0),
                          ),
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            onPressed: () {},
                            color: Colors.orange[100],
                            child: Text(
                              "shakes",
                              style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown,
                              ),
                            ),
                            padding: EdgeInsets.all(8.0),
                          ),
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Colors.orange[100],
                            onPressed: () {},
                            child: Text(
                              "cold-drinks",
                              style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown,
                              ),
                            ),
                            padding: EdgeInsets.all(8.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ))),
          Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.only(left: 6.0, right: 6.0),
              child: Container(
                  child: ListView(
                children: <Widget>[
                  items(),
                  items(),
                  items(),
                  items(),
                  items(),
                  items(),
                  items(),
                  items(),
                ],
              )),
            ),
          ),
        ],
      ),
    );
  }
}
