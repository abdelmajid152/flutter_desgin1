import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Drawer1 extends StatefulWidget {
  @override
  _Drawer1State createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.teal,
      ),
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(right: 30.0, top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'من نحن',
                          style: TextStyle(
                              fontFamily: 'monadi',
                              color: Colors.white,
                              fontSize: 20.0),textDirection: TextDirection.rtl,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'تسجيل الدخول',
                          style: TextStyle(
                              fontFamily: 'monadi',
                              color: Colors.white,
                              fontSize: 20.0),textDirection: TextDirection.rtl,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'برامج اخرى',
                          style: TextStyle(
                              fontFamily: 'monadi',
                              color: Colors.white,
                              fontSize: 20.0),textDirection: TextDirection.rtl,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          ' بخمس نجوم قيمنا',
                          style: TextStyle(
                              fontFamily: 'monadi',
                              color: Colors.white,
                              fontSize: 20.0),textDirection: TextDirection.rtl,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 80.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 20.0,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.camera_alt_outlined, color: Colors.teal),
                  ),
                  CircleAvatar(
                    radius: 20.0,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.camera, color: Colors.teal),
                  ),
                  CircleAvatar(
                    radius: 20.0,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.camera,
                      color: Colors.teal,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
