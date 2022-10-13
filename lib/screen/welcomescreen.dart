import 'package:flutter/material.dart';

class Welcome_Screen extends StatelessWidget {
  const Welcome_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Text(
            "welcome screen",
            style: TextStyle(fontSize: 23, color: Colors.red),
          ),
        ),
      ),
    );
  }
}
