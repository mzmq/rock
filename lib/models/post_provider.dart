import 'package:flutter/material.dart';

import './post.dart';
class PostProvider with ChangeNotifier {

 final List<Post> _item = [
    Post(Id: '1', Title: 'Title1', Price: 50, ImgUrl: 'https://cdn.pixabay.com/photo/2022/03/20/11/04/mountains-7080595_960_720.jpg'),
    Post(Id: '2', Title: 'Title2', Price: 90, ImgUrl: 'https://cdn.pixabay.com/photo/2013/04/04/12/34/mountains-100367_960_720.jpg'),
    Post(Id: '3', Title: 'Title3', Price: 20, ImgUrl: 'https://cdn.pixabay.com/photo/2012/06/19/10/32/owl-50267_960_720.jpg'),
    Post(Id: '4', Title: 'Title4', Price: 99.9, ImgUrl: 'https://cdn.pixabay.com/photo/2016/11/14/04/45/elephant-1822636_960_720.jpg'),
    Post(Id: '5', Title: 'Title5', Price: 50.50, ImgUrl: 'https://cdn.pixabay.com/photo/2013/05/17/07/12/elephant-111695_960_720.jpg'),

  ] ;

 List<Post> get item {
   return [..._item] ;
 }
 List<Post> get likedItem {
   return _item.where((element) => element.isLike ).toList() ;
 }

}