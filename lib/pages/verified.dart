import 'package:chaunzika_app/pages/fingerprint.dart';
import 'package:flutter/material.dart';

class Verified extends StatelessWidget {
  const Verified({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(
                'assets/images/house2.jpg'), // Replace with your local image path
            fit: BoxFit.cover,
          ),
          color: Colors.black.withOpacity(0.8),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    child: Text(
                      'Verified',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  //one field
                  const SizedBox(
                    height: 20,
                  ),
                  //text
                  Row(
                    children:  [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(onTap: () {
                           Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Fingerprint(),
                              ),
                            );
                        },
                          child: const Icon(Icons.arrow_back, size: 40, color: Colors.white,)),
                      ),
                    ],
                  ),

                  const Icon(
                    Icons.check,
                    size: 300,
                    color: Colors.green,
                  ),

                  //login button
                  //another
                  //register
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
