import 'package:flutter/material.dart';

class ProductList with ChangeNotifier{

  final Map<int,String> _products={
      1:'Purple Nice Polo TCP',
      2:'Gold Rownd Watch For Male And Female',
      3:'Nice Hoody, Looking Cool With Any Ladies',
      4:'Condoms, Milky And Chocoly Silky Penies Wear',
      5:'Black Boot, Fashion Is For You',
      
    };

  final List<String> _linkImages=[
      'https://ng.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/52/573717/1.jpg?7111',
      'https://ng.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/81/3072812/1.jpg?5325',
      'https://ng.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/11/2543622/1.jpg?9916',
      'https://ng.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/30/542729/2.jpg?1043',
      'https://ng.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/44/4662522/1.jpg?4421',
     ];

  final List<String> _productPrice=[
      '50\$',
      '2000\$',
      '26\$',
      '9\$',
      '150\$',
     ];

    final Map<String,String> _productsImage={
     

    };

     final Map<String,String> _productPrices={
     

    };

    ProductList(){
      int i=-1;
      for(var p in _products.entries){
        
        i++;
        _productsImage[p.value]=_linkImages[i];
        
       
      }

      i=-1;

       for(var p in _products.entries){
         
         i++;
        _productPrices[p.value]=_productPrice[i];
         
      }
      
   }
    Map<int,String> getProducts(){
      return _products;
    }

    Map<String,String> getProductImages(){
      return _productsImage;
    }

    Map<String,String> getProductPrices(){
      return _productPrices;
    }
}