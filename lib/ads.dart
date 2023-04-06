import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:learning3/adslist.dart';

class MyAdds extends StatelessWidget {
 MyAdds({super.key});
  final Ads _ads = Ads();

  @override
  Widget build(BuildContext context) {
    return GridView.count(
       crossAxisCount: 1,
       physics:const BouncingScrollPhysics() ,
       
       
       scrollDirection: Axis.horizontal,
       children: List.generate(_ads.getAdsLength(), (index){
          return  Image.network(_ads.getAds(index: index),
          );
              
             
             
             
       }),
      );;
  }
}