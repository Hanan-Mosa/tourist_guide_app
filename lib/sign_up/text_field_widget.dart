import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  String text ;
  TextEditingController controller;
   TextFieldWidget({super.key,required this.controller,required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          labelText: text,

        ),
      ),
    );
  }
}
