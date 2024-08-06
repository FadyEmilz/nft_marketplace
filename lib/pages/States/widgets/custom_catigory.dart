import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBarCatigory extends StatefulWidget {
  const CustomBarCatigory({super.key, required this.title, required this.startIcon});
  final String title ;
  final IconData startIcon;


  @override
  State<CustomBarCatigory> createState() => _CustomBarCatigoryState();
}

class _CustomBarCatigoryState extends State<CustomBarCatigory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,height: 40,
      decoration: BoxDecoration(
        color: Color(0xff271740),
          borderRadius: BorderRadius.circular(27),
          border: Border.all(width: 2,color: Colors.white12)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(widget.startIcon,size: 13,),
            Text(widget.title),
            Icon(Icons.keyboard_arrow_down,size: 13,)
          ],
        ),
      ),
    );
  }
}
