import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traver/screens/detail_pages/events/event_form.dart';

class EventsBookingScreen extends StatefulWidget {
  const EventsBookingScreen({super.key});

  @override
  State<EventsBookingScreen> createState() => _EventsBookingScreenState();
}

class _EventsBookingScreenState extends State<EventsBookingScreen> {
  bool isCounterVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF1A1A1A),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 220,
                  decoration: const BoxDecoration(
                    color: Color(0xFF51D779),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                ),
                Positioned(
                  top: 110,
                  left: 25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sziget Music Festival",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.calendar_month,
                              size: 25, color: Colors.white),
                          const SizedBox(width: 10),
                          Text(
                            "Mid of August",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.location_on_sharp,
                              size: 25, color: Colors.white),
                          Text(
                            "Budapest",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  child: _circleButton(Icons.arrow_back, () {
                    Navigator.pop(context);
                  }),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                "Select Sector",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 100,
                        width: 300,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                          color: Color.fromARGB(255, 42, 42, 42),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        left: 120,
                        child: Text(
                          "Stage",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 200,
                              width: 75,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(30)),
                                color: Color.fromARGB(255, 169, 29, 29),
                              ),
                            ),
                            Positioned(
                              top: 80,
                              left: 30,
                              child: Text(
                                "D1",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 200,
                              width: 150,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 255, 219, 39),
                              ),
                            ),
                            Positioned(
                              top: 70,
                              left: 30,
                              child: Column(
                                children: [
                                  Text(
                                    "A1",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    "(General Plus)",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 200,
                              width: 75,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30)),
                                color: Color.fromARGB(255, 31, 107, 220),
                              ),
                            ),
                            Positioned(
                              top: 80,
                              left: 30,
                              child: Text(
                                "D3",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
              child: Text(
                "Select Tickets",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Sector : ",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "A1 (General Plus)",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isCounterVisible = true;
                          });
                        },
                        child: isCounterVisible
                            ? _IncrementCounter()
                            : Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: .8, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.add,
                                        size: 14,
                                        color: Colors.white,
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "Add",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Tickets Filled for Sector : D1 & D3",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: NavBar(
        isCounterVisible: isCounterVisible,
      ),
    );
  }
}

Widget _circleButton(IconData icon, VoidCallback onPressed) {
  return GestureDetector(
    onTap: onPressed,
    child: CircleAvatar(
      backgroundColor: Colors.black.withOpacity(0.5),
      radius: 20,
      child: Icon(icon, color: Colors.white),
    ),
  );
}

class NavBar extends StatelessWidget {
  final bool isCounterVisible;
  const NavBar({super.key, required this.isCounterVisible});
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
              if (isCounterVisible) {
                Get.to(() => EventReviewScreen());
              } else {
                Get.snackbar("Alert", "Please select a ticket first",
                    backgroundColor: Colors.red,
                    colorText: Colors.white,
                    snackPosition: SnackPosition.BOTTOM);
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF51D779),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              textStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              minimumSize: const Size(80, 30),
            ),
            child: const Text(
              "Next",
              style: TextStyle(color: Colors.white),
            ),
          )),
    );
  }
}

class _IncrementCounter extends StatefulWidget {
  @override
  __IncrementCounterState createState() => __IncrementCounterState();
}

class __IncrementCounterState extends State<_IncrementCounter> {
  int _count = 2;

  void _increment() {
    if (_count < 6) {
      setState(() {
        _count++;
      });
    }
  }

  void _decrement() {
    if (_count > 2) {
      setState(() {
        _count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: .8, color: Colors.grey),
          borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.remove, color: Colors.white, size: 18),
            onPressed: _decrement,
          ),
          Text(
            '$_count',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          IconButton(
            icon: Icon(Icons.add, color: Colors.white, size: 18),
            onPressed: _increment,
          ),
        ],
      ),
    );
  }
}
