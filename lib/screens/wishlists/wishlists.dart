import 'package:flutter/material.dart';

class Wishlists extends StatelessWidget {
  const Wishlists({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wishlists',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF51D779),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Column(
            children: [
              WishlistCards(
                image: "assets/trip_packages/event_3.jpg",
                name: "Glastonbury",
                type: "Music Festival",
                time: "July",
                location: "California",
              ),
              const SizedBox(
                height: 20,
              ),
              WishlistCards(
                image: "assets/trip_packages/event_1.png",
                name: "Sziget",
                type: "Concert",
                time: "April",
                location: "Budapest",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WishlistCards extends StatelessWidget {
  const WishlistCards({
    super.key,
    required this.image,
    required this.name,
    required this.type,
    required this.location,
    required this.time,
  });

  final String image, name, type, location, time;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                width: .6,
                color: Color.fromARGB(255, 31, 152, 70),
              )),
          child: Row(
            children: [
              Container(
                width: 375,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(image, width: 180),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            type,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_month,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                time,
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_sharp,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                location,
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 8,
          right: 15,
          child: Row(
            children: [
              _circleButton(Icons.favorite, () {}),
            ],
          ),
        ),
      ],
    );
  }
}

Widget _circleButton(IconData icon, VoidCallback onPressed) {
  return Container(
    width: 35,
    height: 35,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.grey.withOpacity(0.2),
    ),
    child: Center(
      child: IconButton(
        icon: Icon(icon, color: Colors.red, size: 20),
        onPressed: onPressed,
      ),
    ),
  );
}
