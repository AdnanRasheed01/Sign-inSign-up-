import 'package:firebase_core/firebase_core.dart';
import 'package:first_ui/firebase_options.dart';
import 'package:first_ui/ui/ui_screen/login_screen.dart';
import 'package:first_ui/ui/ui_screen/profile_screen.dart';
import 'package:first_ui/ui/ui_screen/register_screen.dart';
import 'package:first_ui/ui/ui_screen/splash_screen.dart';
import 'package:flutter/material.dart' ;

void main()   async{
  WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student connect',
      home: SplashScreen(),
    );
  }
}
