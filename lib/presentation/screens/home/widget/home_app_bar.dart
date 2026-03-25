import 'package:bkashdemoapp/core/app_strings.dart';
import 'package:bkashdemoapp/presentation/screens/home/bkash-menu/bkash_menu.dart';
import 'package:bkashdemoapp/presentation/screens/home/widget/balance_check.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (ctx)=> BkashMenuDrawer()));
            },
            child: CircleAvatar(
              radius: 22,
              child: Icon(Icons.person),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.userName,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                BalanceCheck(),
              ],
            ),
          ),

          Spacer(),

          //Search icon
          Container(
            height: 46,
            width: 46,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.white,
            ),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ),

          SizedBox(width: 12),
//app logo
          Container(
            height: 46,
            width: 46,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.white,
            ),
            child: IconButton(
              onPressed: () {},
              icon: ImageIcon(AssetImage('assets/bkash.png')),
            ),
          ),
        ],
      )
    );
  }
}
