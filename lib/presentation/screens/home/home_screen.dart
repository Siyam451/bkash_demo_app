import 'package:bkashdemoapp/core/app_colors.dart';
import 'package:bkashdemoapp/presentation/screens/home/widget/add_money_from_bank.dart';
import 'package:bkashdemoapp/presentation/screens/home/widget/cursol_slider.dart';
import 'package:bkashdemoapp/presentation/screens/home/widget/home_app_bar.dart';
import 'package:bkashdemoapp/presentation/screens/home/widget/menu_card.dart';
import 'package:bkashdemoapp/presentation/screens/home/widget/popular_services.dart';
import 'package:bkashdemoapp/presentation/screens/home/widget/promo_banner.dart';
import 'package:bkashdemoapp/presentation/screens/home/widget/quick_features.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HomeAppBar(),
      backgroundColor: AppColors.primary,
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 12,
          children: [
            MenuGrid(),
            HomeCarouselSlider(
              sliders: [
                "https://www.bkash.com/uploaded_contents/cms/web-banner-1458x540_1742099711452.png",
                "https://www.nop-station.com/images/uploaded/Products/bKash-Payment.png",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcdey-meykAp3TbOt1Mxh2VV8nFGie_CvoCQ&s"
              ],
            ),
            QuickFeatureCard(),

            PopularServicesSection(),

            AddMoneySection(),


          ],
        ),
      ),
    );
  }
}
