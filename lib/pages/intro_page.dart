// ignore_for_file: prefer_const_constructors

// ignore: unused_import
import 'dart:io';
import 'package:diko/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  // final titleStyle = TextStyle(fontSize: 24);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[300],
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            children: [
              
              SizedBox(
                height: 75,
              ),

              // logo
              Image(
                image: AssetImage('lib/images/cuddle_couch_logo.png'),
                height: 250,
              ),
              
              SizedBox(
                height: 25,
              ),

              // title
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Text(
                  'Cuddle up in Comfort',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 48,
                    fontFamily: 'Allura',
                    color: Color.fromARGB(255, 105, 65, 50),
                    shadows: const [
                      Shadow(
                        color: Colors.brown,
                        offset: Offset(0, 2), 
                        blurRadius: 5,
                      ),
                    ]
                  ),
                ),
              ),
              
              SizedBox(
                height: 15,
              ),
              
              // subtitle
              Text(
                'Your elegant haven, where you can relax and unwind in the lap of luxury, surrounded by beauty and grace.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 78, 43, 29),
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                ),
              ),
      
              SizedBox(
                height: 65,
              ),

              // button to continue
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 78, 42, 31),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 43, 29, 24),
                        offset: Offset(0, 3),
                        blurRadius: 7.5,
                      )
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Shop Now',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 14,
                        color: Color.fromARGB(255, 207, 165, 148),
                        fontWeight: FontWeight.w700,
                        letterSpacing: 3,
                      ),
                    ),
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}