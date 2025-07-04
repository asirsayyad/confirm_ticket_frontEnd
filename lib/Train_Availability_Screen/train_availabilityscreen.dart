import 'package:flutter/material.dart';

class TrainAvailabilityscreen extends StatelessWidget {
  const TrainAvailabilityscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.network(
          "assets/logo.png",
          height: 150, // Reduce this value to shrink the image
          fit: BoxFit.contain,
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
    );
  }
}
