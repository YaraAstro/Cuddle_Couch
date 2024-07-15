import 'package:diko/models/cart.dart';
import 'package:diko/models/sofa.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CartSofa extends StatefulWidget {
  Sofa sofa;

  CartSofa({
    super.key,
    required this.sofa,
  });

  @override
  State<CartSofa> createState() => _CartSofaState();
}

class _CartSofaState extends State<CartSofa> {
  // method for remove items from cart
  void removeFromCart() {
    Provider.of<Cart>(context, listen: false).deleteFromCart(widget.sofa);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.brown[300],
      ),
      child: ListTile(
        leading: Image.asset(widget.sofa.imagePath),
        title: Text(
          widget.sofa.name,
          style: TextStyle(
            fontFamily: 'Raleway',
            color: Colors.brown.shade800,
          ),
        ),
        subtitle: Text(
          '\$ ${widget.sofa.price}',
          style: TextStyle(
            fontFamily: 'Quicksand',
            color: Colors.brown.shade500,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.delete_rounded,
            color: Colors.brown[200],
          ),
          onPressed: removeFromCart,
        ),
      ),
    );
  }
}
