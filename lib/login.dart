import 'package:flutter_desgin1/sign_in.dart';

import 'bulidTextFiled.dart';





import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool visibility = true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(appBar: AppBar(
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      backgroundColor: Colors.white,
      title: Text(
        'تسجيل الدخول',
        style: TextStyle(
            fontFamily: 'monadi', fontSize: 16.0, color: Colors.black),
      ),
    ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
              ),
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Color(0xff15B89B),
                backgroundImage: AssetImage("images/3.png"),
              ),
              Text(
                'عقاريتو',
                style: TextStyle(
                    fontFamily: 'monadi', color: Color(0xff15B89B), fontSize: 40.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Aqarito',
                    style: TextStyle(
                        fontFamily: 'monadi', color: Colors.grey, fontSize: 30.0),
                  ),
                  Icon(
                    Icons.add_location,
                    color: Colors.grey,
                  )
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              buildTextFild(
                prefix: Icons.phone,
                hint: 'phone number',
                inputType: TextInputType.phone,
              ),

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
                    "login",
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
                    Text('i don\'t have account ? '),
                    InkWell(onTap: (){setState(() {// Within the `FirstRoute` widget

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Sign()),
                        );



                    });},
                      child: Text(
                        'sign up',
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
