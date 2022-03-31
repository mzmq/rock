import 'package:flutter/material.dart';
import 'package:rock/screens/cart_screen.dart';
import 'package:rock/widget/drawer_widget.dart';
import 'package:provider/provider.dart';

import '../models/cart_provider.dart';
import '../widget/grid_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final getCount = Provider.of<CartItemProvider>(context).CartCount ;
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title:const Text('Home Page'),

        actions: [
          Row(
            children: [
               IconButton( icon: Icon(Icons.shopping_cart) , onPressed: (){
                 Navigator.of(context).pushNamed(CartScreen.routeName) ;
               }),
              const  SizedBox(width: 5,),
                Text(getCount.toString(), ) ,
              const SizedBox(width: 20,)
            ],
          )
        ],
      ),
      body: const GridWidget(),

    );
  }
}
