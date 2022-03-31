import 'package:flutter/material.dart';
import 'package:rock/screens/cart_screen.dart';

import '../screens/liked_item_screen.dart';
class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

      elevation: 10 ,
      child: ListView(
       children:  [
         const Padding(
           padding: EdgeInsets.all(8.0),
           child: CircleAvatar(
             backgroundImage:  NetworkImage('https://cdn.pixabay.com/photo/2016/03/27/22/22/fox-1284512_960_720.jpg'),
               radius: 70,
             ),
         ) ,
         InkWell(
           onTap: (){
             Navigator.of(context).pushNamed(CartScreen.routeName) ;

           },
           child: const ListTile(
           title: Text('View Cart'),
             trailing: Icon(Icons.shopping_cart),
           ),
         ),
         InkWell(
           onTap: (){
             Navigator.of(context).pushNamed(LikedItemScreen.routeName) ;
           },
           child: const ListTile(
           title: Text('Liked Post'),
             trailing: Icon(Icons.thumb_up_outlined),
           ),
         ),
       ],
      ),
    );
  }
}
