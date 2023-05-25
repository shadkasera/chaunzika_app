import 'package:chaunzika_app/pages/login.dart';
import 'package:flutter/material.dart';

class WelcomPage extends StatelessWidget {
  const WelcomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'CHAUNZIKA APP',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 100),
              child: Text(
                'Chaunzika App is an Online Mobile Application platform for registering,replacing or renewing Malawian National ID card',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            //button
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
              child: GestureDetector(onTap: () {
                Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ),
                            );
              },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.green[300],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                    child: Text(
                      'Get Started',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
