import 'package:first_ui/core/constant/colors.dart';
import 'package:first_ui/core/constant/text_style.dart';
import 'package:first_ui/ui/custome_widgets/custom_Buttom.dart';
import 'package:first_ui/ui/custome_widgets/custom_header.dart';
import 'package:first_ui/ui/custome_widgets/form_container.dart';
import 'package:first_ui/ui/ui_screen/profile_screen.dart';
import 'package:first_ui/ui/ui_screen/register_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

  late String email;
  late String password;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ScaffoldBgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(17, 38, 15, 0),
          child: Column(
            children: [
              CustomHeader('Log in'),
              SizedBox(height: 66),
              Form_Container(
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Email',
                        hintText: 'username@gmail.com',
                      ),
                      onChanged: ((value) {
                        var email = value;
                      }),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.lock_open),
                        labelText: 'Password',
                        hintText: 'Password',
                      ),
                      onChanged: ((value) {
                        var password = value;
                      }),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 62),
              CustomButton(
                  text: 'Log In ',
                  onPressd: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileSccreen()));
                    print('Login  button Pressed');
                  }),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have a account ',
                    style: regularBlackTextStyle.copyWith(fontSize: 14),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()));
                    },
                    child: Text(
                      ' Register',
                      style: boldBlueTextStyle.copyWith(fontSize: 14),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
