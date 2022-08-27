import 'package:first_ui/core/constant/colors.dart';
import 'package:first_ui/core/constant/text_style.dart';
import 'package:first_ui/ui/ui_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileSccreen extends StatelessWidget {
  const ProfileSccreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: blueThemColor,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(25, 30, 25, 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Profile',
              style: boldWhiteTextStyle,
            ),
            SizedBox(height: 10),
            Row(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image.asset('assets/images/mypic.jpg',
                    height: 69, width: 69, fit: BoxFit.cover),
              ),
              SizedBox(width: 26),
              Column(
                children: [
                  Text(
                    'Adnan Rasheed',
                    style: userNameTextStyle,
                  ),
                  SizedBox(height: 5),
                  Text('9k8612137@gmail.com',
                      style: userNameTextStyle.copyWith(
                          fontWeight: FontWeight.normal)),
                ],
              ),
            ]),
            SizedBox(
              height: 29,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 53),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(top: 18, bottom: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.pin_drop,
                              color: blueThemColor,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Manage Address',
                              style: userNameTextStyle.copyWith(
                                  color: Colors.black),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                        Divider(thickness: 1),
                        Padding(
                          padding: const EdgeInsets.only(top: 18, bottom: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.filter_frames,
                                color: blueThemColor,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Update information',
                                style: userNameTextStyle.copyWith(
                                    color: Colors.black),
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),
                        Divider(thickness: 1),
                        Padding(
                          padding: const EdgeInsets.only(top: 18, bottom: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.star_half,
                                color: blueThemColor,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Antonx',
                                style: userNameTextStyle.copyWith(
                                    color: Colors.black),
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),
                        Divider(thickness: 1),
                        SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Text('Log out ',
                              style: userNameTextStyle.copyWith(
                                  color: blueThemColor)),
                        ),
                      ]),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
