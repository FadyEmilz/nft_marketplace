import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:nft_marketplace/recources/path_managers.dart';
import 'package:nft_marketplace/recources/project_listat.dart';
import 'package:nft_marketplace/recources/fonts_managers.dart';
import 'package:nft_marketplace/widgets/catigories.dart';
import 'package:nft_marketplace/widgets/collections.dart';
import 'package:nft_marketplace/widgets/top_seller.dart';

class homeLista extends StatefulWidget {
  const homeLista({super.key});

  @override
  State<homeLista> createState() => _homeListaState();
}

class _homeListaState extends State<homeLista> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 25,),
              SizedBox(height: 170,width: double.infinity,
                  child: ListView.separated(scrollDirection: Axis.horizontal,itemBuilder: (context,index){
                    return Catigories(textOnImage: list_catigouries.catigories_texts[index], myImage: list_catigouries.catigories_image[index]);
                  },
                      separatorBuilder: (context,index){return SizedBox(width: 20,);},
                      itemCount: list_catigouries.catigories_image.length)),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20,bottom: 10),
                child: Align(alignment: Alignment.centerLeft,child: Text("Trending Collections",style: TextStyle(fontSize: 20,color: Colors.white),)),
              ),
              SizedBox(height: 190,width: double.infinity,
              child: ListView.separated(scrollDirection: Axis.horizontal,itemBuilder: (context,index){
                return Collections(cardName: list_collections.collection_list[index].collection_name, cardImage: list_collections.collection_list[index].collection_image);
              }, separatorBuilder: (context,index){
                return SizedBox(width: 10,);
              }, itemCount: list_collections.collection_list.length),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20,bottom: 10),
                child: Align(alignment: Alignment.centerLeft,child: Text("Top Seller",style: TextStyle(fontSize: 20,color: Colors.white),)),
              ),
              SizedBox(height: 290,width: double.infinity,
                child: ListView.separated(scrollDirection: Axis.horizontal,itemBuilder: (context,index){
                  return Top_seller(cardName: list_collections.collection_list[index].collection_name, cardImage: list_collections.collection_list[index].collection_image);
                }, separatorBuilder: (context,index){
                  return SizedBox(width: 10,);
                }, itemCount: list_collections.collection_list.length),
              ),

            ],
            )
          
        ],
      ),
    );
  }
}
