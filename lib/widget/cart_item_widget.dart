import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart_provider.dart';

class CartItemWidget extends StatelessWidget {
  String id;

  String title;

  double price;

  int numberOfProduct;

  String productId ;


   CartItemWidget({
    Key? key,
    required this.id,
    required this.title,
    required this.price,
    required this.numberOfProduct,
    required this.productId ,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Dismissible(
        key: Key(id),
        background: Container(
          alignment: Alignment.centerRight,
          color: Colors.red,
          child: const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.delete , color: Colors.white , size: 40,),
          ),

        ),
        onDismissed: (direction){
          Provider.of<CartItemProvider>(context , listen: false).removeItem(productId ) ;
        },
        direction: DismissDirection.endToStart,
        child: Card(
          elevation: 10,
          child: ListTile(
            subtitle: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Item : ${numberOfProduct }x      Total : ${numberOfProduct*price} JOD' ),
            ),

            title: Text(title) ,
            trailing: Text('${price} JOD'),
          ),
        ),
      ),
    );
  }
}
