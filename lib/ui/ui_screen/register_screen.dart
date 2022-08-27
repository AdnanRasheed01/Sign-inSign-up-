import 'package:first_ui/core/constant/colors.dart';
import 'package:first_ui/core/constant/text_style.dart';
import 'package:first_ui/ui/custome_widgets/custom_Buttom.dart';
import 'package:first_ui/ui/custome_widgets/custom_header.dart';
import 'package:first_ui/ui/custome_widgets/form_container.dart';
import 'package:first_ui/ui/ui_screen/login_screen.dart';
import 'package:first_ui/ui/ui_screen/profile_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ScaffoldBgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(17, 38, 15, 0),
          child: Column(
            children: [
              CustomHeader('Register'),
              SizedBox(height: 66),
              Form(
                key: _formkey,
                child: Form_Container(
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "full name field cannot be empty";
                          } else {
                            null;
                          }
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.person),
                          labelText: 'Full Name',
                          hintText: 'First Name',
                        ),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "father  name field cannot be empty";
                          } else {
                            null;
                          }
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.person),
                          labelText: 'Father Name',
                          hintText: 'father name',
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.phone),
                          labelText: 'Phone Number',
                          hintText: '03123456789',
                        ),
                        keyboardType: TextInputType.phone,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Email field cannot be empty";
                          } else {
                            null;
                          }
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.email),
                          labelText: 'Email',
                          hintText: 'username@gmail.com',
                        ),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.length < 6) {
                            return "Password should be it least 6 characeter";
                          } else {
                            null;
                          }
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.lock_open),
                          labelText: 'Password',
                          hintText: 'Password',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 36),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'Please note that you must see your official',
                      style: regularBlackTextStyle.copyWith(fontSize: 12),
                      children: [
                        TextSpan(
                            text: ' student email',
                            style: regularBlackTextStyle.copyWith(
                                fontSize: 12, color: blueThemColor)),
                        TextSpan(text: ' while registering'),
                      ])),
              Text(
                '',
                textAlign: TextAlign.center,
                style: regularBlackTextStyle.copyWith(fontSize: 12),
              ),
              SizedBox(height: 8),
              CustomButton(
                  text: 'Register ',
                  onPressd: () {
                    if (_formkey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileSccreen()));
                      print('Register button Pressed');
                    }
                  }),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: RichText(
                  text: TextSpan(
                      text: 'Already have an account? ',
                      style: regularBlackTextStyle.copyWith(fontSize: 14),
                      children: [
                        TextSpan(
                          text: 'Log in ',
                          style: boldBlueTextStyle.copyWith(fontSize: 14),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
