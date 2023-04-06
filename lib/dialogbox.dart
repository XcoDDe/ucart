import 'package:flutter/material.dart';

class MyDialogBox extends StatelessWidget {
  final String image;
  final String productname;
  final doubleclicked;
  const MyDialogBox( {super.key, required this.image, required this.productname,required this.doubleclicked});
  
  @override
  Widget build(BuildContext context){
    if(doubleclicked!='oneclicked'){
        Future.delayed(const Duration(milliseconds: 1000), () {
      Navigator.pop(context);
    });
    }
    
    if(doubleclicked=='doubleclicked'){
      return const AlertDialog(
        alignment: Alignment.center,
      backgroundColor: Colors.white,
      shape: CircleBorder(),
      // title: Text(productname),
      content:Icon(Icons.check,
      size: 100,
      color: Color.fromARGB(255, 101, 184, 104),
      ),
       
    );
    }
   return AlertDialog(
      backgroundColor: Colors.transparent,
      title: Text(productname),
      content: Container(
        child: Image.network(image),
       ), 
       actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('OK',style: TextStyle(color: Colors.green),),
        ),
      ],
      
    );
    
  }
}
