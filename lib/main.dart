import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rock/screens/cart_screen.dart';
import 'package:rock/screens/home_screen.dart';

import './models/post_provider.dart';
import 'models/cart_provider.dart';
import './screens/liked_item_screen.dart';
void main() {
  runApp( MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> PostProvider() )  ,
        ChangeNotifierProvider(create: (_)=> CartItemProvider())
      ],
      child: MyApp()));
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false ,
      home: HomePage(),
      routes: {
        LikedItemScreen.routeName : (ctx)=> LikedItemScreen() ,
        CartScreen.routeName : (ctx) => CartScreen() ,
      },
    );
  }
}
