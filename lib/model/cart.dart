import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom Freak',
        price: '236',
        imagePath: 'lib/images/zoom.jpg',
        description:
            'The forward-thinking design of his latest signature shoe.'),
    Shoe(
        name: 'Air Jordan',
        price: '220',
        imagePath: 'lib/images/airjordan.jpg',
        description:
            'The forward-thinking design of his latest signature shoe.'),
    Shoe(
        name: 'KD Treys',
        price: '240',
        imagePath: 'lib/images/kdtrey.jpg',
        description:
            'The forward-thinking design of his latest signature shoe.'),
    Shoe(
        name: 'Kerie y',
        price: '190',
        imagePath: 'lib/images/kyrie.png',
        description:
            'The forward-thinking design of his latest signature shoe.'),
  ];
  // list of items in users cart
  List<Shoe> userCart = [];
  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemsToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }
  // remove item from cart
void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
}
}
