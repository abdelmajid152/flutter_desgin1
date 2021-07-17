import 'package:flutter/material.dart';


class buildTextFild extends StatelessWidget {
  buildTextFild({this.prefix, this.hint, this.inputType});

  final IconData? prefix;
  final String? hint;
  final TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
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

            keyboardType:inputType,

            decoration: InputDecoration(
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              border: InputBorder.none,
              prefixIcon: Icon(
                prefix,
                color: Color(0xff15B89B),
              ),
              hintText: hint,
            ),
          ),
        ),
      ),
    );
  }
}