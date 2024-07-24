import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_marketplace/recources/colors_managers.dart';
import 'package:nft_marketplace/widgets/homeLista.dart';

class myHome extends StatefulWidget {
  const myHome({super.key});

  @override
  State<myHome> createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors_managers.myPrimary,
        title: Center(child: Text('NFT Marketplace',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.5,color: Colors.white),)),
      ),
      backgroundColor: colors_managers.myPrimary,
      body: homeLista()

    );
  }
}
