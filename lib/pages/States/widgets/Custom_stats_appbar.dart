import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_marketplace/recources/colors_managers.dart';
import 'package:nft_marketplace/recources/fonts_managers.dart';

class Stats_appar extends StatelessWidget {
  const Stats_appar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: Icon(Icons.more_outlined),
          )
        ],
        backgroundColor: colors_managers.myPrimary,
        title: Center(child: Text('Stats',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,fontFamily: fonts_managers.displayFont),))
    );
  }
}
