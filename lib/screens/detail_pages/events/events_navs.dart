import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traver/screens/detail_pages/events/events_sector.dart';

class EventsNavigationBar extends StatelessWidget {
  const EventsNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: ElevatedButton(
            onPressed: () {
              Get.to(() => EventsBookingScreen());
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF51D779),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              textStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              minimumSize: const Size(80, 30),
            ),
            child: const Text(
              "Book Now",
              style: TextStyle(color: Colors.white),
            ),
          )),
    );
  }
}
