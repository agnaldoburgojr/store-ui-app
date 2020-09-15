import 'package:flutter/material.dart';
import 'package:shopping_design/widgets/cart/cart-product-item.widget.dart';

class CartProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          CartProductItem('BeoPlay Speaker', 755, 'assets/product-1.png'),
          CartProductItem('Leather Wristwatch', 450, 'assets/product-2.png'),
          CartProductItem(
              'Smart Bluetooth Speaker', 900, 'assets/product-3.png'),
          CartProductItem('Smart Luggage', 100, 'assets/product-4.png'),
          CartProductItem('Smartphone Case', 99, 'assets/product-5.png'),
          CartProductItem('Speakes Stand', 49, 'assets/product-6.png'),
          CartProductItem('AirPods', 199, 'assets/product-7.png'),
        ],
      ),
    );
  }
}
