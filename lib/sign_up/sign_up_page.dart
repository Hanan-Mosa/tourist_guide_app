import 'package:flutter/material.dart';
import 'package:tourist_guide_app/login/login_page.dart';
import 'package:tourist_guide_app/widgets/elevated_button_widget.dart';
import 'package:tourist_guide_app/widgets/text_form_field_widget.dart';

class SignUpPage extends StatefulWidget {

  SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  GlobalKey <FormState> _formKey = GlobalKey();

   bool hiddenPassword = true ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Sign Up', style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w600,
                      color:
                      Colors.black54
                  ),),
                  TextFormFieldWidget(controller: nameController,
                      text: 'Full Name',
                      hidden: false,
                      validate: validateName,
                  onIconClick: (){},
                  icon: Icons.edit,),
                  TextFormFieldWidget(controller: emailController,
                      text: 'Email Address',
                      hidden: false,
                      validate: validateEmail,
                  icon: Icons.email_rounded,
                  onIconClick: (){},),
                  TextFormFieldWidget(controller: passwordController,
                      text: 'Password',
                      hidden: hiddenPassword,
                      validate: validatePassword,
                  onIconClick: (){
                    hiddenPassword =!hiddenPassword;
                    setState(() {

                    });
                  },
                  icon:hiddenPassword ?Icons.visibility_off:Icons.visibility,),
                  TextFormFieldWidget(controller: phoneController,
                      text: 'Phone Number',
                      hidden: false,
                      validate: validatePhone,
                    icon: Icons.phone,
                  onIconClick: (){},),
                  ElevatedButtonWidget(
                      text: 'Sign up', clickButton: (){
                        if (_formKey.currentState!.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LoginPage()));
                      }}),



                ],

              ),
            ),
          ),
        ),
      ),
    );
  }

  String? validatePhone(String value) {
    RegExp regex = RegExp(r"^\+\d{1,3}\d{9}$");
    if (!regex.hasMatch(value)) {
      return 'Please enter a valid phone number like +201234567897';
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.isEmpty) {
      return 'Please enter your password';
    } else if (value.length < 8) {
      return 'Password should be at least 8 characters long';
    }
    return null;
  }

  String? validateEmail(String value) {
    RegExp regex = RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");
    if (value.isEmpty) {
      return 'Please enter your email';
    } else if (!(regex.hasMatch(value))) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validateName(String value) {
    if (value.isEmpty) {
      return 'Please enter your name';
    }
    return null;
  }
}

