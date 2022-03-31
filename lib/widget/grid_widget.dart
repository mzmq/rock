import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/post_provider.dart';
import '../widget/grid_tile_widget.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final getData = Provider.of<PostProvider>(context);
    final getList = getData.item;
    return GridView.builder(
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
            ));
  }
}
