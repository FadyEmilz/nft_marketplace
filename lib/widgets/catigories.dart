import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_marketplace/recources/fonts_managers.dart';

class Catigories extends StatefulWidget {
  const Catigories({super.key, required this.textOnImage, required this.myImage});
  final String textOnImage;
  final String myImage;

  @override
  State<Catigories> createState() => _CatigoriesState();
}

class _CatigoriesState extends State<Catigories> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipRRect(child: Image(image: AssetImage(widget.myImage,),
        fit: BoxFit.cover,
        width: 252,height: 167.50,
      ),
        borderRadius: BorderRadius.circular(25)
        ,),

      Positioned(bottom: 0,
        child: Container(
          decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,colors: [
            Color(0xFF000000).withOpacity(0),
            Color(0xFF000000).withOpacity(.5)
          ]
          )),
          width: 252,height: 50,
          child: ClipRRect(child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 3,sigmaY: 3),
            child: Center(child: Text(widget.textOnImage,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,fontFamily: fonts_managers.displayFont),)),),),),
      )
    ],);
  }
}
