import 'package:diko/models/sofa.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // product list
  List sofaShop = [
    Sofa(
        name: 'Lamb Velvet Sofa',
        price: '549.99',
        imagePath: 'lib/images/white_single_arm_chair.png',
        description: 'White Light Luxury Lazy Single Chair'),
    Sofa(
        name: 'Velvet Wingback Armchair',
        price: '219.99',
        imagePath: 'lib/images/arm_chair_cusioned.png',
        description: 'Upholstered Tub Single Sofa Cuddle Chair Home Office'),
    Sofa(
        name: 'Contemporary Boucle Chair',
        price: '314.99',
        imagePath: 'lib/images/single_cusioned_sofa.png',
        description:
            'Relax in comfort with the cloud inspired Alexa sofa chair'),
    Sofa(
        name: 'Reclining Armchair',
        price: '449.99',
        imagePath: 'lib/images/strandmon-wing-chair-nordvalla-dark-grey.png',
        description:
            'Single Sofa Chair with Retractable Footrest in Linen Deep Grey'),
    Sofa(
        name: 'Nordic Snail Chair',
        price: '599.99',
        imagePath: 'lib/images/wing_chair.png',
        description:
            'swivel lounge chair is as comfortable as it appears for you to curl'),
    Sofa(
        name: 'Oneinmil Velvet Side Chair',
        price: '349.99',
        imagePath: 'lib/images/velvet_single_arm_chair.png',
        description:
            'Single Accent Sofa, Tufted Velvet Lounge Chair Mid Century Vanity Chair')
  ];

  // cart items
  List sofaCart = [];

  // get the product list
  List getSofalist() {
    return sofaShop;
  }

  // get the cart items
  List getCartSofa() {
    return sofaCart;
  }

  // add items to cart
  void addSofaToCart(Sofa sofaToAdd) {
    sofaCart.add(sofaToAdd);
    notifyListeners();
  }

  // remove items from cart
  void deleteFromCart(Sofa sofaToRemove) {
    sofaCart.remove(sofaToRemove);
    notifyListeners();
  }
}
