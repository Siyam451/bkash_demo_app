import 'package:bkashdemoapp/presentation/screens/home/provider/home_provider.dart';
import 'package:bkashdemoapp/presentation/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=> HomeProvider(),
      child: MaterialApp(
        home: SplashScreen()
      ),
    );
  }
}




