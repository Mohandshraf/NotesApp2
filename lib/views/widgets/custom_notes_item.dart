import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              "Flutter Tips",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "Build Your Career with Flutter",
                style: TextStyle(fontSize: 20),
              ),
            ),
            trailing: IconButton(
              icon: Icon(Icons.delete, color: Colors.black, size: 30),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text("May 1, 2023", style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}
