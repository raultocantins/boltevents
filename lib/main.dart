import 'package:appfest/app/features/authentication/prensenter/screens/signin_screen.dart';
import 'package:appfest/app/features/details/presenter/screens/details_screen.dart';
import 'package:appfest/app/features/home/presenter/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'InfinityFest',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: const Color(0xfff52d55),
          backgroundColor: const Color(0XFF161515),
          fontFamily: 'Karla',
        ),
        routes: {
          "/details": (context) => const DetailsScreen(),
          "/home": (context) => HomeScreen()
        },
        home: const SignInScreen());
  }
}
