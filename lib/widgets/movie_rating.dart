import 'package:flutter/material.dart';

class MovieRating extends StatelessWidget {
  const MovieRating({super.key});

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
      child: const Row(
        children: [
          Icon(
            Icons.star,
            color: Color(0xFFFFD700),
            size: 16.0,
          ),
          SizedBox(width: 4.0,),
          Text(
            "8.2",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.0,
              fontWeight: FontWeight.normal,
            ),
          )
        ],
      )
    );
  }
}
