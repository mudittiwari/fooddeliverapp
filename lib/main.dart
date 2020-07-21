import 'package:flutter/material.dart';
import 'package:mudit/second.dart';
import 'cartpage.dart';
import 'restaurants.dart';
void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "myapp",
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  void shop(String name) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => secondpage(),
        ));
  }

  void cart() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => cartpage(),
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
                      onTap: () {},
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
                          builder:(context)=>restaurants(),
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
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => cartpage()));
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
              onTap: cart,
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 3,
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50.0),
                              bottomRight: Radius.circular(50.0))),
                      child: Image.asset(
                        "assets/images/first.jpg",
                        fit: BoxFit.cover,
                        color: Colors.black54,
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.orange[100],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "welcome to twigy",
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          Expanded(
            flex: 4,
            child: ListView(
              children: <Widget>[
                Container(
                  height: 40.0,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Best Restaurants",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, right: 6.0, left: 6.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.brown, width: 2.0),
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.brown[500],
                    ),
                    height: 155.0,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: ClipOval(
                            child: Image(
                                fit: BoxFit.cover,
                                height: 100.0,
                                width: 100.0,
                                image: AssetImage(
                                  "assets/images/second.jpg",
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  "Sai Bakers",
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange[100],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  "this is the best restaurant in this city.",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.orange[100],
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              MaterialButton(
                                child: Text(
                                  "Visit",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.brown,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onPressed: () => shop("sai bakers"),
                                color: Colors.orange[100],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, right: 6.0, left: 6.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.brown, width: 2.0),
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.brown[500],
                    ),
                    height: 155.0,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: ClipOval(
                            child: Image(
                                fit: BoxFit.cover,
                                height: 100.0,
                                width: 100.0,
                                image: AssetImage(
                                  "assets/images/first.jpg",
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  "Sai Bakers",
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange[100],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  "this is the best restaurant in this city.",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.orange[100],
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              MaterialButton(
                                child: Text(
                                  "Visit",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.brown,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onPressed: () => shop("sai bakers"),
                                color: Colors.orange[100],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, right: 6.0, left: 6.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.brown, width: 2.0),
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.brown[500],
                    ),
                    height: 155.0,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: ClipOval(
                            child: Image(
                                fit: BoxFit.cover,
                                height: 100.0,
                                width: 100.0,
                                image: AssetImage(
                                  "assets/images/second.jpg",
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  "Sai Bakers",
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange[100],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  "this is the best restaurant in this city.",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.orange[100],
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              MaterialButton(
                                child: Text(
                                  "Visit",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.brown,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onPressed: () => shop("sai bakers"),
                                color: Colors.orange[100],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, right: 6.0, left: 6.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.brown, width: 2.0),
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.brown[500],
                    ),
                    height: 155.0,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: ClipOval(
                            child: Image(
                                fit: BoxFit.cover,
                                height: 100.0,
                                width: 100.0,
                                image: AssetImage(
                                  "assets/images/first.jpg",
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  "Sai Bakers",
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange[100],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  "this is the best restaurant in this city.",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.orange[100],
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              MaterialButton(
                                child: Text(
                                  "Visit",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.brown,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onPressed: () => shop("sai bakers"),
                                color: Colors.orange[100],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, right: 6.0, left: 6.0,bottom:10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.brown, width: 2.0),
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.brown[500],
                    ),
                    height: 155.0,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: ClipOval(
                            child: Image(
                                fit: BoxFit.cover,
                                height: 100.0,
                                width: 100.0,
                                image: AssetImage(
                                  "assets/images/second.jpg",
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  "Sai Bakers",
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange[100],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  "this is the best restaurant in this city.",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.orange[100],
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              MaterialButton(
                                child: Text(
                                  "Visit",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.brown,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onPressed: () => shop("sai bakers"),
                                color: Colors.orange[100],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
