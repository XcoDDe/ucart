import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:learning3/appdata.dart';
import 'package:learning3/homepage.dart';
import 'package:learning3/product_list.dart';
import 'package:learning3/scrolling.dart';
import 'package:provider/provider.dart';
import 'package:device_preview/device_preview.dart';


void main() {
  runApp(

    MultiProvider(
      providers: [
         ChangeNotifierProvider(create: (_)=> AppData()),
         ChangeNotifierProvider(create: (_)=> ProductList()),
      ],
       child: DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(),
      ),
       )  
    );
}

 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print('Rebuilds main widget');
    return MaterialApp(
     theme: ThemeData(
    colorScheme: const ColorScheme.dark()
      ),
      home: const HomePage(),
    
      );
  }
}