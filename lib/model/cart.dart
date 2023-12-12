import 'package:ecommerce/model/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoesShop = [
    Shoe(
        name: 'Jordan Air',
        price: '410',
        imagePath: 'assets/images/2.png',
        description: 'Shoes with permium quality on he market'),
    Shoe(
        name: 'Jordan Air',
        price: '410',
        imagePath: 'assets/images/1.png',
        description: 'Shoes with permium quality on he market'),
    Shoe(
        name: 'Jordan Air',
        price: '410',
        imagePath: 'assets/images/3.png',
        description: 'Shoes with permium quality on he market'),
    Shoe(
        name: 'Jordan Air',
        price: '410',
        imagePath: 'assets/images/1.png',
        description: 'Shoes with permium quality on he market'),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> shoeList() {
    return shoesShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item for from the cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
