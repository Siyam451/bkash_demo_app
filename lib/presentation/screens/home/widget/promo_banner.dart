import 'package:flutter/material.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/offfer_banner.png',height: 134,width: 390,),
    );
  }
}
