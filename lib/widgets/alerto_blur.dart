import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nft_marketplace/recources/fonts_managers.dart';
import 'package:nft_marketplace/recources/route_managers.dart';
import 'package:nft_marketplace/recources/strings_managers.dart';

class Alerto extends StatefulWidget {
  const Alerto({super.key});

  @override
  State<Alerto> createState() => _AlertoState();
}

class _AlertoState extends State<Alerto> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
            child: Container(
              width: 306,
              height: 190
              ,color: Colors.white.withOpacity(.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
              Text(string_managers.exxplore_alerto, style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,fontFamily: fonts_managers.displayFont,letterSpacing: 1.5),),
                Text(textAlign: TextAlign.center,string_managers.youCan_alerto,style: TextStyle(fontSize: 13,color: Colors.grey[400]),),
                Spacer(),
                Container(width: 200,decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.white ),borderRadius: BorderRadius.circular(40)),
                  child: ClipRRect(borderRadius: BorderRadius.circular(20),
                      child: BackdropFilter(filter: ImageFilter.blur(sigmaY: 35,sigmaX: 35),
                      child: MaterialButton(onPressed: (){
                        setState(() {
                          Navigator.pushReplacementNamed(context, routesNames.myHome);
                        });

                      }, child: Text('Get started now',style: TextStyle(color: Colors.white),),))),
                ),
                SizedBox(height: 20,)
            ],),)));
  }
}
