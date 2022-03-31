import 'package:flutter/foundation.dart';

class Details {
  String id;
  String title;

  String subTitle;

  Details({
    required this.id,
    required this.title,
    required this.subTitle,
  });
}
class DetailsProvider with ChangeNotifier{

  final List<Details> _item =[] ;
  List<Details> get item {
    return [..._item];
  }

}
