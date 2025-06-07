import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 65, 62, 62).withOpacity(0.8),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(Icons.search, color: Colors.white, size: 30),
    );
  }
}
