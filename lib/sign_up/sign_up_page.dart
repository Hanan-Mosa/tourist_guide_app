import 'package:flutter/material.dart';
import 'package:tourist_guide_app/sign_up/text_field_widget.dart';

class SignUpPage extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
   SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Sign Up',style: TextStyle(
                fontSize: 30,fontWeight: FontWeight.w600,
                color:
                  Colors.black54
              ),),
              TextFieldWidget(controller: nameController,text: 'Full Name'),
              TextFieldWidget(controller: emailController,text: 'Email Address'),
              TextFieldWidget(controller: passwordController,text: 'Password'),
              TextFieldWidget(controller: phoneController,text: 'Phone Number'),
              ElevatedButton(onPressed: (){


              },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Colors.teal
                  ),
                  child: const Text('Sign up',style: TextStyle(
                  fontSize:25 ,fontWeight: FontWeight.w400,
                  color:
                  Colors.black54,
              ),))


            ],

          ),
        ),
      ),
    );
  }
}
