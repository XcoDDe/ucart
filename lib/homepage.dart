import 'package:flutter/material.dart';
import 'package:learning3/ads.dart';
import 'package:learning3/listproducts.dart';
import 'package:learning3/product_list.dart';
// import 'package:learning3/appdata.dart';
import 'package:learning3/rating_icons.dart';
import 'package:learning3/scrolling.dart';
import 'package:learning3/secondscreen.dart';
import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}):super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final ScrollController _scrollController=Provider.of<ScrollingListener>(context,listen: false).getscrollController;
  late bool floatbuttonshow=Provider.of<ScrollingListener>(context).showFloatingActionButton;
  scrollListener() {
    if (_scrollController.offset >= _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
          floatbuttonshow=false;
          Provider.of<ScrollingListener>(context,listen: false).getvalueFloatButton(floatbuttonshow);
      } else {
        floatbuttonshow=true;
        Provider.of<ScrollingListener>(context,listen: false).getvalueFloatButton(floatbuttonshow);
    }
  }
  // void _scrollListener() {
  //   if (_scrollController.offset >= _scrollController.position.maxScrollExtent &&
  //       !_scrollController.position.outOfRange) {
  //     setState(() {
  //       _showFloatingActionButton = false;
  //     });
  //   } else {
  //     setState(() {
  //       _showFloatingActionButton = true; 
  //     });
  //   }
  // }
  @override
  void initState() {
    // TODO: implement initState
    print('intitstate');
    super.initState();
      _scrollController.addListener(scrollListener);
  }
   
  @override
  Widget build(BuildContext context) {
     print('buiding');
        return ChangeNotifierProvider(
          create: (context) => ScrollingListener(),
          builder: (context, child) {
             return Scaffold(
             appBar: AppBar(
              
            backgroundColor:  Colors.black,
            title: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children:[
                 GestureDetector(
                   onTap: () {
                     
                   },
                   child: CircleAvatar(
                       
                       radius: 30,
                       backgroundColor: Colors.grey,
                       child: Image.network(
                         'https://static.wikia.nocookie.net/spongebob/images/b/b0/Kampkoral.png/revision/latest?cb=20220724102633',
                         ),
                     ),
                 ),
                 // const Icon(Icons.store_sharp,
                 // size: 40,
                 // ),
                 const SizedBox(width: 100,),
                 const Text('ustore'),
               ],
             ),
             
           ],
              ),
            ),
           ),
            body:  GestureDetector(
            onHorizontalDragEnd: (details) {
              Navigator.push(context, MaterialPageRoute(
           builder: (context) {
             return const CartScreen();
           },
          
              ));
            },
             child: Column(
             children: [
              Container(
           height: 100,
           child: MyAdds()
           ),
            Expanded(child: ListOfProducts(scrollControl:_scrollController)), 
             ],
           ),
            ),
           floatingActionButton: Consumer<ScrollingListener>(
              builder: (context, floatbuttonshows, child) {
             return Visibility(
           visible: floatbuttonshows.showFloatingActionButton,
           child: Stack(
           children: [
             FloatingActionButton(
                 onPressed: (){
             Navigator.push(context, MaterialPageRoute(
               builder: (context) {
                 return const CartScreen();
               }
             ),
             );
            },
            backgroundColor: const Color.fromARGB(255, 245, 139, 0),
             child: const Icon(
             Icons.add_shopping_cart_rounded,
             ),
              ),
               
              Positioned(
                 top: 2,
                 right: 1,
                 child: Container(
                   padding: const EdgeInsets.all(4),
                   decoration: const BoxDecoration(
                     color: Colors.red,
                     shape: BoxShape.circle,
                   ),
                   child: const Text(
                     '2',
                     style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.bold
                     ),
                   ),
                 ),
              ),
           ],
            ),
              );
          
            },
            
           ),
              );
          },
          
        );
  }

  
}

 