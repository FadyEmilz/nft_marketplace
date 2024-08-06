import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_marketplace/recources/colors_managers.dart';

class Subtitle extends StatefulWidget {
  const Subtitle({super.key, required this.active, required this.icon, required this.Title});
  final bool active;
  final IconData icon;
  final String Title;

  @override
  State<Subtitle> createState() => _SubtitleState();
}

class _SubtitleState extends State<Subtitle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(widget.icon),
            Text(widget.Title,style: TextStyle(fontSize: 15),),

          ],

        ),
        SizedBox(height: 20,),

       if(widget.active) Container(

          height: 4,width: 100,

          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: colors_managers.subpurble,
                offset: Offset(0,-6),
                blurRadius: 15,
                spreadRadius: 1.5
              )
            ],
              color: colors_managers.subpurble,
              borderRadius: BorderRadius.only(
                  topRight:Radius.circular(5),topLeft: Radius.circular(5))),
        )
      ],
    );
  }
}
