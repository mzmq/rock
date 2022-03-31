import 'package:flutter/material.dart';

class CartItem {
  String id;

  String title;

  double price;

  int numberOfPost;

  CartItem(
      {required this.id,
      required this.title,
      required this.price,
      required this.numberOfPost});
}

class CartItemProvider with ChangeNotifier {
  Map<String, CartItem> _item = {};

  Map<String, CartItem> get item {
    return {..._item};
  }


  // get Count Cart
  int get CartCount {
    return _item.length ;
  }

  // get Total Price

  double get TotalPrice {
    double TotalPrice = 0.0 ;
    _item.forEach((key, value) {
      TotalPrice += value.price * value.numberOfPost ;
    })  ;
    return TotalPrice ;
  }


  void addItem(String id, String title, double price) {
    if (_item.containsKey(id)) {
      _item.update(
          id,
          (value) => CartItem(
                id: value.id,
                title: value.title,
                price: value.price,
                numberOfPost: value.numberOfPost + 1,

              ));
    } else {
      _item.putIfAbsent(id,
          () => CartItem(id:id, title: title, price: price, numberOfPost: 1));
      notifyListeners();

    }
  }

  void removeItem (String productId){
    _item.remove(productId) ;
    notifyListeners();
  }

}
