import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(title: 'Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: profile());
  }

  Widget profile() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                  "https://image.shutterstock.com/image-photo/red-sunset-mountains-landscape-sunny-260nw-234300205.jpg"),
              fit: BoxFit.cover,
            )),
            // color: Colors.deepOrange,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height / 1.3,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
            ),
          ),
          Positioned(
            top: height / 7.5,
            child: Column(
              children: <Widget>[
                Container(
                  height: height / 5,
                  width: height / 5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.performgroup.com/di/library/GOAL/d7/c3/lionel-messi-barcelona-training_sq826j3wq1ax1allqkeuxn652.jpg?t=-1733082868&quality=60&w=640&h=360"),
                          fit: BoxFit.cover),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          blurRadius: 5.0,
                          spreadRadius: 2.0,
                          offset: Offset(0, 1),
                        )
                      ],
                      color: Colors.white,
                      shape: BoxShape.circle),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    'Leo Messi',
                    style: TextStyle(fontSize: 30, fontFamily: 'OpenSans'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    'Athlete',
                    style: TextStyle(fontSize: 20, color: Colors.black45),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    child: Text(
                  'Welcome to the official page of Leo messi',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      height: height / 16,
                      width: width / 4,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        color: Colors.deepPurple,
                        onPressed: () {},
                        child: Text(
                          'Follow',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: width / 4,
                      height: height / 16.5,
                      child: OutlineButton(
                        borderSide:
                            BorderSide(color: Colors.deepPurple, width: 2.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)),
                        onPressed: () {},
                        child: Text('Message'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          Text(
                            '128M',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Followers',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Text(
                            '492',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Posts',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Text(
                            '226',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Following',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 40,
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: Icon(
                          Icons.grid_on,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.account_box,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    shape: BoxShape.rectangle,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: width / 2.2,
                        height: height / 4.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            image: DecorationImage(
                                image: AssetImage('images/1.jpg'),
                                fit: BoxFit.cover),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 2.0,
                                  spreadRadius: 3.0)
                            ]),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: width / 2.2,
                        height: height / 4.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            image: DecorationImage(
                                image: AssetImage('images/3.jpg'),
                                fit: BoxFit.cover),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 2.0,
                                  spreadRadius: 3.0)
                            ]),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
