import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_desgin1/drawer.dart';
import 'package:flutter_desgin1/login.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var houses = ['ايجار وبيع', 'بيع', 'ايجار'];
  String dropdownValue = "ايجار وبيع";

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width / 100;
    double heightSize = MediaQuery.of(context).size.height / 100;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        drawer: Drawer1(),
        appBar: AppBar(
          backgroundColor: Color(0xff15B89B),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.filter_list,
                ),
                onPressed: () {
                  setState(() {
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return StatefulBuilder(builder:
                              (BuildContext context, StateSetter setState
                                  /*You can rename this!*/) {
                            return bulidBottomSheet(setState, heightSize);
                          });
                        });
                  });
                })
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Text('الكل', style: TextStyle(color: Colors.black)),
              ),
              Tab(
                child: Text('بيت', style: TextStyle(color: Colors.black)),
              ),
              Tab(
                child: Text('شقة', style: TextStyle(color: Colors.black)),
              ),
              Tab(
                child: Text('عماره', style: TextStyle(color: Colors.black)),
              ),
              Tab(
                child: Text('مزرعة', style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Login(),
            Login(),
            Login(),
            Login(),
            Login(),
          ],
        ),

      ),
    );
  }

  Container bulidBottomSheet(StateSetter setState, double heightSize) {
    return Container(height: heightSize * 60,

      child: StatefulBuilder(builder: (context, snapshot) {
        return Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Divider(
                  indent: 130,
                  endIndent: 130,
                  thickness: 3.0,
                ),
              ),
              Flexible(
                child: SingleChildScrollView(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'الفلتر',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'monadi',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'اختر النوع',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'monadi',
                        ),
                      ),
                    ),
                    Container(
                      height: 40.0,
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color(0x40009688)),
                      child: DropdownButton<String>(
                        icon: const Icon(Icons.keyboard_arrow_down),
                        elevation: 16,
                        style: const TextStyle(color: Color(0xff009688)),
                        underline: Container(
                          color: Colors.transparent,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: houses.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Container(alignment: Alignment.centerRight,
                                child: Text(value,textDirection: TextDirection.rtl,) ),
                          );
                        }).toList(),
                        value: dropdownValue,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'اختر القسم',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'monadi',
                        ),
                      ),
                    ),
                    Container(
                      height: 40.0,
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color(0x40009688)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'السعر',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'monadi',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 40.0,
                              margin: EdgeInsets.only(right: 5.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: Color(0x40009688)),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 40.0,
                              margin: EdgeInsets.only(left: 5.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: Color(0x40009688)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: Icon(
                                Icons.refresh_sharp,
                                color: Color(0xff15B89B),
                              ),
                              height: 40.0,
                              margin: EdgeInsets.only(right: 5.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Color(0x40009688),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              child: Center(
                                child: Text(
                                  "التطبيق",
                                  style: TextStyle(
                                      fontFamily: 'monadi',
                                      fontSize: 16.0,
                                      color: Colors.white),
                                ),
                              ),
                              height: 40.0,
                              margin: EdgeInsets.only(left: 5.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: Color(0xff15B89B)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
              ),
            ],
          ),

          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(
                  20.0,
                ),
                topEnd: Radius.circular(20.0)),
            color: Colors.white,
          ),
        );
      }),
    );
  }





}
