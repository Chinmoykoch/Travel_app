import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HotelCards extends StatelessWidget {
  const HotelCards({
    super.key,
    required this.height,
    required this.width,
    required this.image,
    required this.name,
    required this.location,
    required this.rating,
    required this.user,
  });

  final double height;
  final double width;
  final String image, name, location, rating, user;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * .8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Material(
              elevation: 5,
              shadowColor: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                  height: height / 5,
                  width: width,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  Icon(Icons.star),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(rating),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(user)
                ],
              )
            ],
          ),
          Row(
            children: [
              Icon(Iconsax.location, color: Color(0xFF51D779)),
              const SizedBox(
                width: 5,
              ),
              Text(
                location,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              )
            ],
          ),
        ],
      ),
    );
  }
}
