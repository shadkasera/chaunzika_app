import 'package:chaunzika_app/pages/homelanding.dart';
import 'package:chaunzika_app/pages/landing.dart';
import 'package:chaunzika_app/pages/signup.dart';
import 'package:flutter/material.dart';

class Fingerprint extends StatelessWidget {
  const Fingerprint({super.key});

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
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    child: Text(
                      'Verification',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  //one field
                  SizedBox(
                    height: 20,
                  ),
                  //text
                  Text(
                    'Put your thumb here',
                    style: TextStyle(fontSize: 28, color: Colors.white),
                  ),

                  Icon(
                    Icons.fingerprint,
                    size: 300,
                    color: Colors.white,
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
