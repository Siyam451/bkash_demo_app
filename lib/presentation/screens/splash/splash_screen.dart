import 'package:bkashdemoapp/presentation/screens/home/home_screen.dart';
import 'package:bkashdemoapp/presentation/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animController;
  late Animation<double> _fadeIn;
  @override
  void initState() {
    super.initState();
    _animController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );
    _fadeIn = CurvedAnimation(parent: _animController, curve: Curves.easeIn);
    _animController.forward();

    Future.delayed(Duration(seconds: 2),(){
      if(mounted){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=>BkashLoginScreen()));
      }
    });


  }

  @override
  void dispose() {
    super.dispose();
    _animController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: FadeTransition(
          opacity: _fadeIn,
          child: SizedBox(
            height: 100,
            width: 100,
            child: Image.asset('assets/bkash_splash.png'),
          ),
        ),
      ),
    );
  }
}