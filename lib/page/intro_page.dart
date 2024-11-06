import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Image.asset(
                  'lib/images/nike.png',
                  height: 240,
                  width: 240,
                ),
                const SizedBox(
                  height: 48,
                ),
                //title
                const Text(
                  'Just Do It',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),

                //sub title
                const Text(
                  'Brand new sneaker and custom kicks with premium quality',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 48,
                ),

                //start now button
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(), )),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12)
                    ),
                    padding: const EdgeInsets.all(25.0),
                    child: const Center(
                      child: Text(
                        'Shop now',
                        style: TextStyle(
                            color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
