// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:ecommerce/components/cart_item.dart';
import 'package:ecommerce/model/cart.dart';
import 'package:ecommerce/model/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            //heading
            Text(
              'My Cart',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  //indivdual shoe
                  Shoe individualShoe = value.getUserCart()[index];

                  return CartItem(shoe: individualShoe,);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
