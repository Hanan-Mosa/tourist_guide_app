import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  String text;
  IconData icon;
  TextEditingController controller;
  Function validate;
  bool hidden;
  Function onIconClick;
  TextFormFieldWidget(
      {super.key, required this.controller, required this.text,required this.validate,required this.hidden,required this.icon, required this.onIconClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: TextFormField(
        validator: (value) => validate(value),
        controller: controller,
        obscureText: hidden,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          labelText: text,
          suffixIcon: IconButton(
            icon: Icon(icon),
            onPressed: (){
              onIconClick();
            },
          )
        ),
      ),
    );
  }
}
