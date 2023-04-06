import 'package:flutter/material.dart';

 class AppData with ChangeNotifier{
   List<bool>rateStarFirstPosition=[
    false,false,false,false,false
  ];
  List<bool>rateStarSecondPosition=[
    false,false,false,false,false
  ];
  List<bool>rateStarThirdPosition=[
    false,false,false,false,false
  ];

  bool info(int index, int trackIcon){
      if(trackIcon==1){
        return rateStarFirstPosition[index];
      }else if(trackIcon==2){
        return rateStarSecondPosition[index];
      }else{
        return rateStarThirdPosition[index];
      }
      
  }

  void toggle(int index, int trackIcon){
        if(trackIcon==1){
        rateStarFirstPosition[index]=!rateStarFirstPosition[index];
      }else if(trackIcon==2){
        rateStarSecondPosition[index]=!rateStarSecondPosition[index];
      }else{
       rateStarThirdPosition[index]=!rateStarThirdPosition[index];
      }
      notifyListeners();
  }

   
     
     
      // int _counter=0;

      // void counterIncreement(){
         
      //     _counter++;
      //     notifyListeners();
      // }

      // int get counter{
      //   return  _counter;
      // }

 }