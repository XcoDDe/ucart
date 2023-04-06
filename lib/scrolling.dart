import 'package:flutter/material.dart';

class ScrollingListener with ChangeNotifier{
  final ScrollController _scrollController=ScrollController();
  bool? _showFloatingActionButton=false;
 
  get showFloatingActionButton{
    return _showFloatingActionButton;
  }

  get getscrollController{
    
    return _scrollController;
  }

  void listen(){
    notifyListeners();
  }


   getvalueFloatButton(bool showFloatingActionButton){
    _showFloatingActionButton=showFloatingActionButton;
    notifyListeners();
   }

  // listen(ScrollController scrollController){
  //   _scrollController=scrollController;
  //   _scrollController.addListener(_scrollListener);
  // }
  

    
}