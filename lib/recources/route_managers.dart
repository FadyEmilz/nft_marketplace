

import 'package:flutter/cupertino.dart';
import 'package:nft_marketplace/pages/myHome.dart';
import 'package:nft_marketplace/pages/onBoarding.dart';

class routes_manager{
  static Map<String,WidgetBuilder> my_routes ={
    routesNames.onBoarding : (context){return onBoarding();} ,
    routesNames.myHome : (context){return myHome();}

  };
}
class routesNames{
  static String onBoarding = "onBoarding";
  static String myHome = 'myHome';
}