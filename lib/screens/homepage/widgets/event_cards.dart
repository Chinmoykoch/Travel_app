import 'package:flutter/material.dart';

class EventCards extends StatelessWidget {
  const EventCards({
    super.key,
    required this.height,
    required this.width,
    required this.image,
    required this.title,
    required this.location,
    required this.time,
  });

  final double height;
  final double width;

  final String image, title, location, time;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Material(
              elevation: 5,
              shadowColor: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                height: height / 3.5,
                width: width / 1.2,
                child: Opacity(
                  opacity: 1,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: width * 0.2),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Color(0xFF51D779),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          location,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                // Time Text
                Text(
                  time,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
