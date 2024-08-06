import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_marketplace/pages/States/pages/StateScreen.dart';
import 'package:nft_marketplace/recources/colors_managers.dart';
import 'package:nft_marketplace/widgets/custom_navbar.dart';
import 'package:nft_marketplace/widgets/homeLista.dart';

class myHome extends StatefulWidget {
  const myHome({super.key});

  @override
  State<myHome> createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  List<Widget> screenList = [
    homeLista(),
    StateScreen()
  ];
  int index =0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: colors_managers.myPrimary,

      extendBody: true,
      bottomNavigationBar: Container(
          height: 110,


          child: CustomBottomNavigationBar(
            onpressedStates: () {
              setState(() {
                index=1;
              });
            }, onpressedHome: () {
              setState(() {
                index=0;
              });

          },)),



      body: screenList[index]

    );
  }
}
