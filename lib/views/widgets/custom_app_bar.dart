import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(height: 90, width: 20),
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Spacer(),
        CustomSearchIcon(),
    ],
    );
  }
}
