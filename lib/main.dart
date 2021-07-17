import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_desgin1/chat.dart';
import 'package:flutter_desgin1/home.dart';
import 'package:flutter_desgin1/login.dart';
import 'package:flutter_desgin1/sign_in.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: <Widget>[
            Icon(Icons.home_outlined, size: 30 ,color: Colors.teal,),
            Icon(Icons.map_outlined, size: 30,color: Colors.teal),
            Icon(Icons.chat_outlined, size: 30,color: Colors.teal),
            Icon(Icons.favorite, size: 30,color: Colors.teal),
            Icon(Icons.perm_identity, size: 30,color: Colors.teal),
          ],
          color: Color(0x40009688),
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[_getPage(_page)],
            ),
          ),
        ));
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return Flexible(child: HomePage());
      case 1:
        return Flexible(child: Login());
      case 2:
        return Flexible(child: Login());

      default:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("This is the More page"),
          ],
        );
    }
  }
}
