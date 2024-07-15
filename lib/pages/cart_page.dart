import 'package:diko/models/cart.dart';
import 'package:diko/models/sofa.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/cart_item.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Cart',
              style: TextStyle(
                fontFamily: 'Inspiration',
                fontSize: 48,
                letterSpacing: 2,
                color: Colors.brown.shade600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.getCartSofa().length,
                itemBuilder: (context, index) {
                  // get each sofa within cart
                  Sofa eachSofa = value.getCartSofa()[index];

                  // then return items
                  return CartSofa(sofa: eachSofa,);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
