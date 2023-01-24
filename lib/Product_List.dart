import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class productlist extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return productliststate();
  }
}

class productliststate extends State<productlist> {
  List<String> productname = [
    'Mango',
    'Orange',
    'Grapes',
    'Banana',
    'Chery',
    'Peach',
    'Mixed Fruit Basket'
  ];
  List<String> productunit = ['Kg', 'Kg', 'Kg', 'Dozen', 'Kg', 'Kg', 'Kg'];
  List<String> productprice = ['100', '100', '50', '40', '120', '120', '110'];
  List<String> productimage = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmSs6PwX7g-saQylgqWmNfO3R0QQTDNGnz0g&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRKdGLIN8j9KBE1M6wgmxeNpUf2QbkpjBqgw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9kLjuSwMXeYzXR_Fix5ZCoRxhUQ4P7apyDA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJdQAIuys131grRVRYzM7zpthD_hRvI4M8LA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFEszoOREuGXHajM9seGf1gF_w168IpqXV0Q&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJKE1ecpc7MtQAC-O-8yeo1RsQ5u0P9XxBbA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbz93IA_TkdHbetofluMo7NsDh7C8cHSMcVg&usqp=CAU'
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Product List"),
          centerTitle: true,
          actions: [
            Center(
              child: Badge(
                badgeContent: Text("2", style: TextStyle(
                    color: Colors.white
                ),
                ),
                animationDuration: Duration(microseconds: 300),
                child: Icon(Icons.shopping_cart),
              ),
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount:productname.length,
                  itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image(
                              height: 100,
                            width: 100,
                            image: NetworkImage(productimage[index].toString()),
                            ),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(productname[index].toString(), style: TextStyle(
                                    fontSize:16, fontWeight: FontWeight.w500,
                                  ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text( "Rs:-"+productprice[index].toString()+" "+productunit[index].toString(), style: TextStyle(
                                    fontSize:16, fontWeight: FontWeight.w500,
                                  ),
                                  ),
                                  SizedBox(height: 5,),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      height: 35,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      child: Center(
                                        child: Text("Add To Cart" , style: TextStyle(
                                          color: Colors.white
                                        ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ],
        ));
  }
}
