 import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:learning3/appdata.dart';
import 'package:learning3/product_list.dart';
import 'package:provider/provider.dart';

class RatingIcons extends StatefulWidget {
  String productName;
  int productIndex;
  int indexButton;
   
  RatingIcons({Key? key, required this.productName, required this.productIndex, required this.indexButton}) : super(key: key);
  
   
  @override
  State<RatingIcons> createState() => _RatingIconsState();
}

class _RatingIconsState extends State<RatingIcons> {
 String productName='';
 int productIndex=0;
 int indexButton=0;
 late String productRealName;
   

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    productName=widget.productName;
    productIndex=widget.productIndex;
    indexButton=widget.indexButton;
  }
  @override
  Widget build(BuildContext context) {
    productRealName= Provider.of<ProductList>(context).getProducts().values.elementAt(productIndex);
    Function check=Provider.of<AppData>(context).info;

    return Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
        IconButton(
          iconSize: 20,
          icon:  check(productIndex, indexButton)!=false && productRealName==productName
           ? const Icon(Icons.star_rate,color: Colors.yellow,) : const Icon(Icons.star_border,color: Colors.yellow,),
          onPressed: () {
             Provider.of<AppData>(context,listen: false).toggle(productIndex, indexButton);
           },
        ),
        
       ],
    );
  }
}
