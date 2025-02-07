import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class MyBookingsScreen extends StatefulWidget {
  const MyBookingsScreen({super.key});

  @override
  _MyBookingsScreenState createState() => _MyBookingsScreenState();
}

class _MyBookingsScreenState extends State<MyBookingsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Bookings",
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              height: 45,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: AnimatedAlign(
                      alignment: _tabController.index == 0
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      duration: const Duration(milliseconds: 300),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2 - 20,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF51D779),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),
                  Theme(
                    data: ThemeData(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                    child: TabBar(
                      controller: _tabController,
                      indicator: BoxDecoration(),
                      indicatorColor: Colors.transparent,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.white,
                      tabs: const [
                        Tab(text: "Upcoming"),
                        Tab(text: "Completed"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("No Upcoming Events"),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Browse",
                          style: TextStyle(
                            color: Color(0xFF51D779),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      CompletedCardDetails(
                        image: "assets/trip_packages/event_2.png",
                        events: "Coachella Head",
                        name: "John Wick",
                        number: "9913426523",
                        date: "05/02/2025",
                        email: "lol@gmail.com",
                        location: "California",
                        id: "#213513558",
                        type: "Concert",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CompletedCardDetails(
                        image: "assets/trip_packages/event_3.jpg",
                        name: "Johhny Sir",
                        number: "885247452",
                        date: "20/01/2025",
                        email: "hehe@gmail.com",
                        events: "Glastonbury",
                        location: "England",
                        id: "#213128c558",
                        type: "Music Festival",
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CompletedCardDetails extends StatelessWidget {
  const CompletedCardDetails({
    super.key,
    required this.image,
    required this.events,
    required this.type,
    required this.id,
    required this.location,
    required this.name,
    required this.number,
    required this.email,
    required this.date,
  });

  final String image, events, name, number, email, date, id, type, location;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: .6),
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 231, 255, 243),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 375,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
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
                            events,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            type,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_sharp,
                                size: 20,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Booking Details",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      "Name : ",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(name),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Phone Number : ",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(number),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Email: ",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(email),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Event Date : ",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(date),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                DottedLine(),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      "Booking Id : ",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Text(
                      id,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
