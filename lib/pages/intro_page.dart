import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 29, 39),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 29, 39),
        title: Text(
          'Rodrik E-Commerce',
        ),
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              // Untuk Logo
              child: Image.asset(
                'lib/images/rodriklogo.png',
                height: 250,
              ),
            ),
            const SizedBox(height: 48),
            // Title
            Text(
              'Ici Cest Rodrik',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.white),
            )
            // Sub Title

            // Button Start Now
          ],
        ),
      ),
    );
  }
}
