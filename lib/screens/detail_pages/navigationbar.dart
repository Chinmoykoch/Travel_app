import 'package:flutter/material.dart';
import "package:get/get.dart";
import 'package:traver/screens/detail_pages/booking/booking_form.dart';

class HotelNavigationBar extends StatelessWidget {
  const HotelNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color.fromARGB(255, 228, 228, 228),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Price",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                ),
                Row(
                  children: const [
                    Text(
                      "Rs.",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "15000",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "/night",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => BookingForm());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF51D779),
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                textStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                minimumSize: const Size(80, 30),
              ),
              child: const Text(
                "Book Now",
                style: TextStyle(color: Colors.white70),
              ),
            )
          ],
        ),
      ),
    );
  }
}
