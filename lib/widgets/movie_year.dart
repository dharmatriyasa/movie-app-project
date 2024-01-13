import 'package:flutter/material.dart';

class MovieYear extends StatelessWidget {
  final String year;

  const MovieYear({
    super.key,
    required this.year,
  });

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
        child: Text(
          year,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
          ),
        )
    );
  }
}
