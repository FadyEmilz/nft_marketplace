import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_marketplace/recources/colors_managers.dart';
import 'package:nft_marketplace/recources/path_managers.dart';

class Top_seller extends StatefulWidget {
  const Top_seller({super.key, required this.cardName, required this.cardImage});
  final String cardName;
  final String cardImage;

  @override
  State<Top_seller> createState() => _CollectionsState();
}

class _CollectionsState extends State<Top_seller> {
  @override
  Widget build(BuildContext context) {
    return Center(

      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 10,sigmaX: 10),
          child: Container(
            color: Colors.white.withOpacity(.05),
            width: 175,height: 260,
            child: Column(
              children: [
                Container(width: 155,height: 155, padding: EdgeInsets.all(8),

                    child: ClipRRect(borderRadius: BorderRadius.circular(20), child: Image(image: AssetImage(widget.cardImage),fit: BoxFit.cover,))),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Abstract Pink",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
                        Text("Abstract Pink",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w400),),
                        SizedBox(height: 10,),
                        Row(children: [
                          Icon(Icons.dashboard_rounded,color: Colors.white,),
                          Text('.906',style: TextStyle(color: Colors.white),),
                          Spacer(),
                          Icon(CupertinoIcons.heart,),
                          Text('200')
                        ],)
                      ],
                    ),
                  )
                )
              ],
            ),
          ),
        ),
      ),);
  }
}
