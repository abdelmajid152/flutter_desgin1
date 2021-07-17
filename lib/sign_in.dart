import 'package:flutter/material.dart';

import 'bulidTextFiled.dart';

class Sign extends StatefulWidget {
  @override
  _SignState createState() => _SignState();
}

class _SignState extends State<Sign> {
  bool visibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'التسجيل ',
          style: TextStyle(
              fontFamily: 'monadi', fontSize: 16.0, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
              ),
              Container(
                height: 80.0,
                width: 80.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: Color(0x4015B89B)),
                child: Icon(
                  Icons.assignment_ind,
                  size: 60.0,
                  color: Color(0xff15B89B),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              buildTextFild(
                prefix: Icons.person,
                hint: 'user name',
               inputType: TextInputType.name,
              ),
              buildTextFild(
                prefix: Icons.phone,
                hint: 'phone number',
                inputType: TextInputType.phone,
              ),
              buildPasswordTextFiled(),
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: double.infinity,
                height: 50.0,
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: Color(0xff15B89B),
                ),
                child: Center(
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('i have account  '),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                      child: Text(
                        'login',
                        style: TextStyle(color: Color(0xff15B89B)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding buildPasswordTextFiled() {
    return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Transform.translate(
                offset: Offset(0, 0),
                child: Container(
                  height: 50.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: Colors.green[50]),
                  child: TextField(
                    obscureText: visibility,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color(0xff15B89B),
                      ),
                      suffixIcon: IconButton(color: Colors.grey,
                        icon: Icon(

                            visibility
                            ? Icons.visibility
                            : Icons.visibility_off),onPressed: (){setState(() {
                              visibility=!visibility;
                            });},
                      ),
                      hintText: 'password',

                    ),
                  ),
                ),
              ),
            );
  }
}
