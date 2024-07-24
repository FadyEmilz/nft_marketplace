import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nft_marketplace/recources/colors_managers.dart';
import 'package:nft_marketplace/recources/fonts_managers.dart';
import 'package:nft_marketplace/recources/strings_managers.dart';
import 'package:nft_marketplace/widgets/alerto_blur.dart';

class onBoarding extends StatefulWidget {
  const onBoarding({super.key});

  @override
  State<onBoarding> createState() => _onBoardingState();
}

class _onBoardingState extends State<onBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( body: SafeArea(
      child: Stack(
        children: [
          Image(width: double.infinity,height: double.infinity ,fit: BoxFit.cover, image: AssetImage('assets/images/onboardingbac.png')),
          Column( crossAxisAlignment: CrossAxisAlignment.center, children: [
           SizedBox(height: 30,) ,
          Container( width: double.infinity,  child: Center(child: Text(string_managers.welcom_title,style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Colors.white,fontFamily: fonts_managers.displayFont),))),
            Spacer(),
            Alerto(),
            SizedBox(height: 50,)

        ],),

        ]
      ),
    
    ),

    );
  }
}
