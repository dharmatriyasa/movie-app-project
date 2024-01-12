import 'package:flutter/material.dart';

class MovieYear extends StatelessWidget {
  const MovieYear({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(
          vertical: 2.0,
          horizontal: 8.0,
        ),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(1),
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        ),
        child: const Text(
          "2023",
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
          ),
        )
    );
  }
}
