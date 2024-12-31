
import 'package:flutter/material.dart';
import 'package:tourist_guide_app/sign_up/sign_up_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tourist Guide',
      home: SignUpPage(),
    );
  }
}
