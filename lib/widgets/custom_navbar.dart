import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar(
      {super.key });


  // final
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 102,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            child: SizedBox(
              width: 450,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                      sigmaX: 100, sigmaY: 100),
                  child: Container(
                    alignment: Alignment.center,
                    height: 90,
                    color: Colors.white.withOpacity(.1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.home,
                              color: Colors.white, size: 39),
                        ),IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.stacked_bar_chart,
                              color: Colors.white, size: 39),
                        ),
                        Container(
                          width: 39,
                        ),
                        const Icon(Icons.search,
                            color: Colors.white, size: 39),
                        const Icon(Icons.person,
                            color: Colors.white, size: 39),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              decoration: ShapeDecoration(
                shape: const StarBorder.polygon(sides: 6, pointRounding: .5),
                color: Colors.white.withOpacity(.5),
              ),
              height: 70,
              width: 70,
              child: const Icon(
                CupertinoIcons.plus,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}