import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart_provider.dart';
import '../widget/cart_item_widget.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/CartScreen';

  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final getListCart = Provider.of<CartItemProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cart Screen'),
        ),
        body: Column(
          children: [
            ListTile(
              leading: const Text(
                'Total',
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
              title: Chip(
                label: Text(
                  '${getListCart.TotalPrice.toString()} JOD',
                  style: const TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.blue,
                elevation: 10,
              ),
              trailing:
                  TextButton(onPressed: () {}, child: const Text('ORDER NOW')),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: getListCart.item.length,
                    itemBuilder: (ctx, i) => CartItemWidget(
                          id: getListCart.item.values.toList()[i].id,
                          productId: getListCart.item.keys.toList()[i],
                          title: getListCart.item.values.toList()[i].title,
                          price: getListCart.item.values.toList()[i].price,
                          numberOfProduct: getListCart.item.values.toList()[i].numberOfPost,
                        )))
          ],
        ));
  }
}
