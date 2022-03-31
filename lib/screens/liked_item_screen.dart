import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/post_provider.dart';
import '../widget/grid_tile_widget.dart';

class LikedItemScreen extends StatelessWidget {
  static const routeName = '/LikedItemScreen' ;

  const LikedItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    final getData = Provider.of<PostProvider>(context);
    final getList = getData.likedItem;

    return Scaffold(
      appBar: AppBar(title: const Text('Liked Post')),

      body: GridView.builder(
          itemCount: getList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
            value: getList[i],
            child: const GridTileWidget(),
          )),
    );
  }
}
