import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemStatsList extends StatefulWidget {
  const ItemStatsList({super.key});

  @override
  State<ItemStatsList> createState() => _ItemStatsListState();
}

class _ItemStatsListState extends State<ItemStatsList> {
  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,height: 60,
      child: Row(

        children: [
          Text('1'),
          SizedBox(width: 10,),
          ClipRRect(borderRadius: BorderRadius.circular(10),
            child: Image.asset("assets/images/art.png",width: 50,height: 50,fit: BoxFit.cover,),
          ),
          SizedBox(width: 10,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Azemei",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
              Text("View info",style: TextStyle(color: Colors.grey),)
            ],
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(Icons.diamond_outlined),
                  Text('2000000000')
                ],
              ),
              Container(width: 100,child: Text('-6.57%',style:TextStyle(color: Colors.red),textAlign: TextAlign.end,))
            ],
          ),

        ],
      ),
    );
  }
}
