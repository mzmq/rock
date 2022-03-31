import 'package:flutter/material.dart';
class Post with ChangeNotifier{
  String Id;
  String Title;
  double Price ;
  bool isLike ;
  String ImgUrl ;

  Post({
    required this.Id ,
    required this.Title ,
    required this.Price ,
    required this.ImgUrl ,
    this.isLike = false  ,
});

  bool get ChangeLike {

   return isLike = !isLike ;

  }
}
