import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_marketplace/pages/States/widgets/SubTitle.dart';
import 'package:nft_marketplace/pages/States/widgets/custom_catigory.dart';
import 'package:nft_marketplace/pages/States/widgets/itemStatsList.dart';
import 'package:nft_marketplace/recources/colors_managers.dart';
import 'package:nft_marketplace/recources/fonts_managers.dart';

class StateScreen extends StatefulWidget {
  const StateScreen({super.key});

  @override
  State<StateScreen> createState() => _StateScreenState();
}

class _StateScreenState extends State<StateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: Icon(Icons.more_outlined),
          )
        ],
        backgroundColor: colors_managers.myPrimary,
        title: Center(child: Text('Stats',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,fontFamily: fonts_managers.displayFont),))
      ),
      backgroundColor: colors_managers.myPrimary,

      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Container(

                  width: double.infinity,

                  decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Subtitle(active: true,icon: Icons.cabin,Title: "Ranking",),
                      SizedBox(width: 10,),
                      Subtitle(active: false,icon: Icons.cabin,Title: "haahah",)

                    ],
                  ),
                ),
                SizedBox(height: 40,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomBarCatigory(startIcon: Icons.widgets_sharp,title: "All Catigories",),
                    SizedBox(width: 20,),
                    CustomBarCatigory(startIcon: Icons.accessibility_new,title: "All Chains",),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(colors: [
                          Color(0xff273362),
                          Color(0xff223d69),
                          Color(0xff311b4f),

                        ],
                        begin: Alignment.topLeft,
                          end: Alignment.centerRight,


                        )),

                    width: 500,height: 545,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListView.separated(itemBuilder: (BuildContext context, int index) { return ItemStatsList(); },
                      separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 20,); }, itemCount: 20,
                      ),
                    ),
                  ),
                )

              ],
            ),
          ],
        ),),


    );
  }
}
