import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/sofa.dart';
import 'package:flutter/material.dart';
import '../components/sofa_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add sofa to cart
  void addSofaToCart(Sofa sofa) {
    // add item to cart
    Provider.of<Cart>(context, listen: false).addSofaToCart(sofa);

    // alert the user about operation
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        backgroundColor: const Color.fromARGB(255, 92, 40, 28),
        title: Text(
          'Successfully Added!',
          style: TextStyle(
            fontFamily: 'Allura',
            color: Colors.brown.shade200,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            fontSize: 30
          ),
          ),
        content: Text(
          'Check your Cart',
          style: TextStyle(
            fontFamily: 'Quicksand',
            color: Colors.brown.shade100,
            fontSize: 16
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          // search bar
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
                color: Colors.brown[100],
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Search ...',
                  style: TextStyle(
                      color: Colors.brown.shade500,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 2),
                ),
                Icon(
                  Icons.search,
                  color: Colors.brown.shade500,
                )
              ],
            ),
          ),

          // catching prase
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              'Where elegance meets ease, and happiness takes flight. Your cozy companion for life.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.brown.shade700,
                  fontFamily: 'Raleway',
                  // fontWeight: FontWeight.w200,
                  fontSize: 17.5,
                  letterSpacing: 1),
            ),
          ),

          // display products
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Hot Picks 🔥',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 24,
                      color: Colors.brown.shade700,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 14,
                    color: Colors.brown.shade500,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          // display products
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                // create a sofa
                Sofa sofa = value.getSofalist()[index];
                return SofaTile(
                  sofa: sofa,
                  onTap: () => addSofaToCart(sofa),
                );
              },
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(left: 25, top: 25, right: 25),
            child: Divider(
              color: Colors.transparent,
            ),
          )
        ],
      ),
    );
  }
}

/*

build(BuildContext context) {
    return ;
  }

*/