import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/post.dart';
import '../models/cart_provider.dart';

class GridTileWidget extends StatefulWidget {
  const GridTileWidget({Key? key}) : super(key: key);

  @override
  State<GridTileWidget> createState() => _GridTileWidgetState();
}

class _GridTileWidgetState extends State<GridTileWidget> {
  @override
  Widget build(BuildContext context) {
    final getData = Provider.of<Post>(context);
    final getCart = Provider.of<CartItemProvider>(context) ;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: GridTile(
          child: Image.network(getData.ImgUrl, fit: BoxFit.cover),
          header: GridTileBar(
            backgroundColor: Colors.black38,
            title: Text(getData.Title , textAlign: TextAlign.center),
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            title: Row(
              children:  [
                IconButton(onPressed: (){
                 setState(() {
                   getData.ChangeLike ;
                 });
                }, icon: Icon(getData.isLike ?Icons.thumb_up_alt : Icons.thumb_up_outlined)) ,
                const SizedBox(width: 15,) ,
                IconButton(onPressed: (){
                  getCart.addItem(getData.Id, getData.Title, getData.Price) ;
                }, icon: const Icon(Icons.shopping_cart, color: Colors.white))


              ],
            ),
            trailing: Text(getData.Price.toString() , style: const TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
