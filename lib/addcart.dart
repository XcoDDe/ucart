import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:learning3/dialogbox.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({super.key});
  

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
        tooltip: 'add',
        icon:  const Icon(Icons.add_shopping_cart,),
        onPressed: (){
         }
        ),
      ],
    );
  }
}