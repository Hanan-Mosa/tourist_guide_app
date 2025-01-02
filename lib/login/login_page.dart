import 'package:flutter/material.dart';
import 'package:tourist_guide_app/home/home_page.dart';
import 'package:tourist_guide_app/widgets/elevated_button_widget.dart';
import 'package:tourist_guide_app/widgets/text_form_field_widget.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = 'Login';

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool hiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as List;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Login',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.black54),
              ),
              TextFormFieldWidget(
                  controller: emailController,
                  text: 'Email Address',
                  validate: (value){
                    String email = args[0];
                    if(emailController != email){
                      return 'Email does not match';
                    }
                    return null;
                  },
                  hidden: false,
                  icon: Icons.email_rounded,
                  onIconClick: () {}),
              TextFormFieldWidget(
                  controller: passwordController,
                  text: 'Password',
                  validate: (value){
                    String password = args[1];
                    if(passwordController.text!= password){
                      return 'Password does not match';
                    }
                    return null;
                  },
                  hidden: hiddenPassword,
                  icon: hiddenPassword ? Icons.visibility_off : Icons.visibility,
                  onIconClick: () {
                    hiddenPassword = !hiddenPassword;
                    setState(() {});
                  }),
              ElevatedButtonWidget(text: 'Login', clickButton: (){
                Navigator.pushNamed(context, HomePage.routeName);
              })
            ],
          ),
        ),
      ),
    );
  }

}
