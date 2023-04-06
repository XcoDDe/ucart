import 'package:flutter/material.dart';
import 'package:learning3/addcart.dart';
import 'package:learning3/dialogbox.dart';
import 'package:learning3/product_list.dart';
import 'package:learning3/rating_icons.dart';
import 'package:learning3/scrolling.dart';
import 'package:provider/provider.dart';

class ListOfProducts extends StatelessWidget {
  ScrollController scrollControl;
  ListOfProducts({super.key, required this.scrollControl});
  // String? doubleclicked;
  // Future<void> showMyDialog(
  //     BuildContext context, String productName, String productImage) async {
  //   await Future.delayed(const Duration(seconds: 60));
  //   // ignore: use_build_context_synchronously
  //   showDialog(
  //       context: context,
  //       builder: (context) {
  //         return MyDialogBox(
  //           productname: productName,
  //           image: productImage,doubleclicked: 'oneclicked',
  //         );
  //       });
  // }

  @override
  Widget build(BuildContext context) {
           Provider.of<ScrollingListener>(context).listen();

    return ListView.builder(
      controller: Provider.of<ScrollingListener>(context,listen: false).getscrollController,
      physics: const ClampingScrollPhysics(),
      itemCount: Provider.of<ProductList>(context).getProducts().length,
      itemBuilder: (context, index) {
        final productList = Provider.of<ProductList>(context);
        String productImage;
        String productName;
        String productPrice;
        productImage = productList.getProductImages().values.elementAt(index);
        productName = productList.getProducts().values.elementAt(index);
        productPrice = productList.getProductPrices().values.elementAt(index);
    
        return GestureDetector(
          onTap: () {
             
            showDialog(
                context: context,
                builder: ((context) {
                  return MyDialogBox(
                    productname: productName,
                    image: productImage,
                    doubleclicked: 'oneclicked',
                  );
                }));
          },
          child: GestureDetector(
                  onDoubleTap: () {
                        showDialog(
                        context: context,
                        builder: ((context) {
                        return MyDialogBox(
                          productname: productName,
                          image: productImage,
                          doubleclicked: 'doubleclicked',
                        );
                  }));
                               },
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: ListTile(
                title: Stack(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Image.network(productImage),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                productName,
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text('price : $productPrice'),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      const AddToCart(),
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                            padding: const EdgeInsets.all(4),
                                            decoration: const BoxDecoration(
                                              color: Colors.green,
                                              shape: BoxShape.circle,
                                            ),
                                            child: const Text(
                                              '20',
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ))
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: RatingIcons(
                                    productIndex: index,
                                    productName: productName,
                                    indexButton: 1,
                                  )),
                                  Expanded(
                                      child: RatingIcons(
                                    productIndex: index,
                                    productName: productName,
                                    indexButton: 2,
                                  )),
                                  Expanded(
                                      child: RatingIcons(
                                    productIndex: index,
                                    productName: productName,
                                    indexButton: 3,
                                  )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
