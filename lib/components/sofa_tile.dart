import 'package:flutter/material.dart';
import '../models/sofa.dart';

// ignore: must_be_immutable
class SofaTile extends StatelessWidget {
  Sofa sofa;
  void Function()? onTap;
  SofaTile({super.key, required this.sofa, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.brown[300],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // sofa pic
          Image.asset(sofa.imagePath),

          // description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              sofa.description,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.brown[600], fontSize: 12.5),
            ),
          ),

          const SizedBox(
            height: 5,
          ),

          // price + details
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // sofa name
                    // ignore: sized_box_for_whitespace
                    Container(
                      width: 175,
                      child: Text(
                        sofa.name,
                        style: TextStyle(
                            fontSize: 20,
                            // fontFamily: 'Quicksand',
                            color: Colors.brown[800],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    // price
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text(
                        '\$ ${sofa.price}',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Quicksand',
                          color: Colors.brown[600],
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                ),

                // plus button
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.brown[200],
                    ),
                  ),
                ),
              ],
            ),
          )

          // button to add cart
        ],
      ),
    );
  }
}
