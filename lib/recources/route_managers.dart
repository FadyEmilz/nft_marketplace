



import 'package:flutter/cupertino.dart';
import 'package:nft_marketplace/pages/States/pages/StateScreen.dart';
import 'package:nft_marketplace/pages/myHome.dart';
import 'package:nft_marketplace/pages/onBoarding.dart';

class routes_manager{
  static Map<String,WidgetBuilder> my_routes ={
    routesNames.onBoarding : (context){return onBoarding();} ,
    routesNames.myHome : (context){return myHome();},
    routesNames.statescreen : (context){return StateScreen();}

  };
}
class routesNames{
  static String onBoarding = "onBoarding";
  static String myHome = 'myHome';
  static String statescreen = 'StateScreen';

}