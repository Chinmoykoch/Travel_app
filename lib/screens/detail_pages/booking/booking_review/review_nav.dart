import 'package:flutter/material.dart';

class ReviewNavigationBar extends StatelessWidget {
  const ReviewNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF51D779),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              textStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              minimumSize: const Size(80, 30),
            ),
            child: const Text(
              "Book Now",
              style: TextStyle(color: Colors.white70),
            ),
          )),
    );
  }
}
