import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Collections extends StatefulWidget {
  const Collections({super.key, required this.cardName, required this.cardImage});
  final String cardName;
  final String cardImage;

  @override
  State<Collections> createState() => _CollectionsState();
}

class _CollectionsState extends State<Collections> {
  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(

      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 10,sigmaX: 10),
          child: Container(
            color: Colors.white.withOpacity(.05),
            width: 167,height: 190,
            child: Column(
              children: [
                Container(width: 149,height: 140, padding: EdgeInsets.all(8),
                    
                    child: ClipRRect(borderRadius: BorderRadius.circular(20), child: Image(image: AssetImage(widget.cardImage),fit: BoxFit.cover,))),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    Text(widget.cardName,style: TextStyle(fontSize: 12,color: CupertinoColors.white),),
                    Spacer(),
                    Icon(CupertinoIcons.heart_fill,color: Colors.red,),
                    SizedBox(width: 4,),
                    Text('200',style: TextStyle(fontSize: 10,color: CupertinoColors.white),),
                  ],),
                )
              ],
            ),
          ),
        ),
      ),);
  }
}
