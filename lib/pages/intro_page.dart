import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text(
          'Rodrik E-Commerce',
        ),
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 16, color: Colors.white),
      ),
      body: Container(
        margin: EdgeInsets.all(12),
        color: Colors.purple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('data'),
          ],
        ),
      ),
    );
  }
}
