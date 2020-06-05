import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => new _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.red[300]),
    );
    return MaterialApp(
      home: DefaultTabController(
        length: 1,
        child: Scaffold(
          drawer: new Drawer(
              child: new ListView(
            children: <Widget>[
              new DrawerHeader(
                child: new Text('Header'),
              ),
              new ListTile(
                title: new Text('First Menu Item'),
                onTap: () {},
              ),
              new ListTile(
                title: new Text('Second Menu Item'),
                onTap: () {},
              ),
              new Divider(),
              new ListTile(
                title: new Text('About'),
                onTap: () {},
              ),
            ],
          )),
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.notifications_active,
                  color: Colors.lightBlue,
                ),
                onPressed: () {
                  // do something
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.hearing,
                  color: Colors.lightBlue,
                ),
                onPressed: () {
                  // do something
                },
              )
            ],
            backgroundColor: Colors.red[400],
            title: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                color: Color.fromARGB(50, 255, 255, 255),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search phone",
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            icon: Icon(Icons.search, color: Colors.white)),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Row(
                        children: <Widget>[
                          IconButton(icon: Icon(Icons.mic), onPressed: () {}),
                          VerticalDivider(color: Colors.white54),
                          IconButton(
                              icon: Icon(Icons.more_vert), onPressed: () {}),
                        ],
                      ),
                    ),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   mainAxisSize: MainAxisSize.min,
                  //   children: <Widget>[
                  //     Text(
                  //       "SOBO",
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
            bottom: TabBar(tabs: <Widget>[
              Text('SOBO',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
            ]),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                //   new ListView(
                // children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Center(
                    child: Image.asset(
                      "assets/images/blog3.jpg",
                      //width: 100,
                      //height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    "Categories",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                new Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 100.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.fromLTRB(2, 20, 0, 0),
                          child: Image.asset(
                            'assets/images/blog3.jpg',
                            height: 200,
                          )),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(2, 20, 0, 0),
                          child: Image.asset(
                            'assets/images/building.jpg',
                            height: 200,
                          )),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(2, 20, 0, 0),
                          child: Image.asset(
                            'assets/images/appman-logo.png',
                            height: 200,
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
                        child: Text(
                          'More',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    "Featured",
                    //textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                new Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      // Text(
                      //   'Featured',
                      //   style: TextStyle(
                      //     fontSize: 18,
                      //     color: Colors.orange,
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(2, 60, 0, 0),
                        child: Text(
                          'Featured Shop',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(2, 20, 0, 0),
                          child: Image.asset(
                            'assets/images/blog3.jpg',
                            height: 200,
                          )),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(2, 20, 0, 0),
                          child: Image.asset(
                            'assets/images/building.jpg',
                            height: 200,
                          )),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(2, 20, 0, 0),
                          child: Image.asset(
                            'assets/images/appman-logo.png',
                            height: 200,
                          )),
                    ],
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(5.0),
                //   child: Text(
                //     "Balcony",
                //     style: TextStyle(
                //       fontSize: 20,
                //       fontWeight: FontWeight.bold,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: SizedBox(
                    height: 60,
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Home"),
                          Icon(
                            Icons.home,
                            color: Colors.lightBlue,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 60,
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("settings"),
                          Icon(
                            Icons.settings_input_composite,
                            color: Colors.lightBlue,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 60,
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Notifica"),
                          Icon(
                            Icons.notifications_active,
                            color: Colors.lightBlue,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 60,
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("people"),
                          Icon(
                            Icons.people,
                            color: Colors.lightBlue,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
