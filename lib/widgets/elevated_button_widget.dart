import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  String text ;
  Function clickButton ;
  ElevatedButtonWidget({super.key,required this.text,required this.clickButton});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
     clickButton();

    },
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: Colors.teal
        ),
        child:  Text(text,style: const TextStyle(
          fontSize:25 ,fontWeight: FontWeight.w400,
          color:
          Colors.black54,
        ),));
  }
}
