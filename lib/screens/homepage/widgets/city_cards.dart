import 'package:flutter/material.dart';

class CityCards extends StatelessWidget {
  const CityCards(
      {super.key,
      required this.width,
      required this.height,
      required this.image,
      required this.title});

  final double width;
  final double height;

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: SizedBox(
            width: width / 2.5,
            height: height / 7,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ))
      ],
    );
  }
}
