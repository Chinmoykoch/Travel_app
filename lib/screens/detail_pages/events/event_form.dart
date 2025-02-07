import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:traver/screens/detail_pages/booking/booking_review/review_nav.dart';
import 'package:traver/screens/detail_pages/events/event_book_success.dart';

class EventReviewScreen extends StatelessWidget {
  const EventReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF1A1A1A),
      appBar: AppBar(
        backgroundColor: Color(0XFF1A1A1A),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Event Review",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Recommedations(
                image: "assets/trip_packages/event_2.png",
                events: "Coachella Head",
                location: "California",
                time: "April",
                type: "Concert",
              ),
              const SizedBox(height: 20),
              const Text("Personal Details",
                  style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 42, 42, 42),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 10),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Name : ",
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Chinmoy Koch",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Email: ",
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "example@gmail.com",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Phone Number: ",
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "1234567890",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: .8, color: Colors.grey),
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Row(
                                children: [
                                  Icon(Icons.edit,
                                      size: 14, color: Colors.white),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "Edit",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Your Booking", style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 42, 42, 42),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 10),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Sector :",
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "A1 (Genral Plus)",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "No. of Tickes",
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "2",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: .8, color: Colors.grey),
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Row(
                                children: [
                                  Icon(Icons.edit,
                                      size: 14, color: Colors.white),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "Edit",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Apply Coupon", style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 0.8),
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0XFF1A1A1A),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter Coupon Code",
                            hintStyle:
                                TextStyle(color: Colors.white, fontSize: 14),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF51D779),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text("Apply",
                            style:
                                TextStyle(fontSize: 14, color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Payment Details",
                  style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 202, 202, 202),
                        width: 0.8),
                    color: const Color(0XFF1A1A1A),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Price/ticket",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Row(
                            children: [
                              Text(
                                "₹",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "5000",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Tickets",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Row(
                            children: [
                              Text(
                                "2",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "GST",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Row(
                            children: [
                              Text("₹"),
                              Text(
                                "500",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Platform Fee",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Row(
                            children: [
                              Text(
                                "₹",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "500",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      DottedLine(
                        dashColor: Color.fromARGB(255, 149, 148, 148),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Grand Total",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Row(
                            children: [
                              const Text(
                                "₹",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "11000.00",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Text(
                        "By continuing, you agree to our Terms and Conditions, including our no-refund policy unless stated oterwise.",
                        style: TextStyle(fontSize: 12, color: Colors.white70),
                        textAlign: TextAlign.justify,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const FormNavBar(),
    );
  }
}

class FormNavBar extends StatelessWidget {
  const FormNavBar({
    super.key,
  });
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
              _showOtpBottomSheet(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF51D779),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              textStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              minimumSize: const Size(80, 30),
            ),
            child: const Text(
              "Buy Ticket",
              style: TextStyle(color: Colors.white),
            ),
          )),
    );
  }
}

class Recommedations extends StatelessWidget {
  const Recommedations({
    super.key,
    required this.image,
    required this.events,
    required this.type,
    required this.time,
    required this.location,
  });

  final String image, events, type, time, location;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 370,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color.fromARGB(255, 42, 42, 42),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(width: 150, image),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          events,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          type,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white70,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(Icons.calendar_month,
                            size: 16, color: Colors.white),
                        Text(
                          time,
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on_sharp,
                            size: 16, color: Colors.white),
                        Text(
                          location,
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

void _showOtpBottomSheet(BuildContext context) {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _expiryController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();
  final GlobalKey<ScaffoldMessengerState> scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Color(0XFF1A1A1A),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
    ),
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          left: 16.0,
          right: 16.0,
          top: 16.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Add Card',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 8),
            const Text(
              'Add Your card no. to proceed to payment.',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _cardNumberController,
              keyboardType: TextInputType.number,
              maxLength: 10,
              style: TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                hintText: 'Enter 10-digit card no.',
                border: OutlineInputBorder(),
                counterText: '',
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _expiryController,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.white),
                    maxLength: 4,
                    decoration: const InputDecoration(
                      hintText: 'Enter Expiry Date (MM/YY)',
                      border: OutlineInputBorder(),
                      counterText: '',
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: TextField(
                    controller: _cvvController,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.white),
                    maxLength: 3,
                    decoration: const InputDecoration(
                      hintText: 'Enter CVV',
                      border: OutlineInputBorder(),
                      counterText: '',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                // Validate if all fields are filled
                if (_cardNumberController.text.isEmpty ||
                    _expiryController.text.isEmpty ||
                    _cvvController.text.isEmpty ||
                    _cardNumberController.text.length != 10 ||
                    _expiryController.text.length != 4 ||
                    _cvvController.text.length != 3) {
                  // Show an error message if any field is missing or invalid
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Please fill in all fields correctly')),
                  );
                } else {
                  // All fields are filled, proceed to next step
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Card Added')),
                  );

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EventBookSuccess(),
                    ),
                  );
                }
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xFF51D779),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Text(
                  'Add Card',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      );
    },
  );
}
