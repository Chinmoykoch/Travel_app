import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:traver/common/curved_edges.dart';
import 'package:traver/common/mapscreen.dart';
import 'package:traver/screens/detail_pages/events/events_navs.dart';
import '../../../utils/constants/constant_data.dart';

class EventDetailsScreen extends StatelessWidget {
  const EventDetailsScreen(
      {super.key,
      required this.image,
      required this.eventname,
      required this.location,
      required this.description});

  final String image, eventname, location, description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF1A1A1A),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: CurvedEdges(),
              child: Stack(
                children: [
                  ClipRRect(
                    child: Image.asset(
                      image,
                      width: double.infinity,
                      height: 320,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 20,
                    child: _circleButton(Icons.arrow_back, () {
                      Navigator.pop(context);
                    }),
                  ),
                  Positioned(
                    top: 50,
                    right: 20,
                    child: Row(
                      children: [
                        _circleButton(Icons.favorite_border, () {}),
                        const SizedBox(width: 10),
                        _circleButton(Icons.share, () {}),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        eventname,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Icon(Iconsax.location, color: Color(0xFF51D779)),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        location,
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    "Description",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF51D779)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    description,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Hashtags(
                        hastags: "#concertlife",
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Hashtags(
                        hastags: "#feetthebeat",
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Hashtags(
                        hastags: "#musicmagic",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Hashtags(
                        hastags: "#unforgettablemoments",
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Hashtags(
                        hastags: "#hiphops",
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Hashtags(
                        hastags: "#raps",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Artists LineUp",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF51D779)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SizedBox(
                      height: 140,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: artists.length,
                          separatorBuilder: (context, index) => const SizedBox(
                                width: 20,
                              ),
                          itemBuilder: (context, index) {
                            final artistdata = artists[index];
                            return Facilities(
                                Image: artistdata['image']!,
                                name: artistdata['name']!);
                          }),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Location",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF51D779)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 200,
                    width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      // border: Border.all(
                      //     color: const Color.fromARGB(255, 210, 210, 210),
                      //     width: .8),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Mapscreen()),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Popular Concert Albums",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF51D779)),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "View all",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Albums(
                          logo: Icons.pause,
                          album: "After Hours",
                          artists: "The Weekend",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Albums(
                          logo: Icons.play_arrow,
                          album: "Austin",
                          artists: "Post Malone",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Albums(
                          logo: Icons.play_arrow,
                          album: "Uthopia",
                          artists: "Travis Scott",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Recommended",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF51D779)),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "View all",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  Recommedations(
                    image: "assets/trip_packages/event_2.png",
                    events: "Coachella Head",
                    location: "California",
                    time: "April",
                    type: "Concert",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Recommedations(
                    image: "assets/trip_packages/event_3.jpg",
                    events: "Glastonbury",
                    location: "England",
                    time: "June",
                    type: "Concert",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Recommedations(
                    image: "assets/trip_packages/event_4.jpg",
                    events: "Tomorrowland",
                    location: "Belgium",
                    time: "April",
                    type: "July",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const EventsNavigationBar(),
    );
  }

  Widget _circleButton(IconData icon, VoidCallback onPressed) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color.fromARGB(255, 42, 42, 42),
      ),
      child: IconButton(
        icon: Icon(icon, color: Colors.white.withOpacity(0.8)),
        onPressed: onPressed,
      ),
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

class Albums extends StatelessWidget {
  const Albums({
    super.key,
    required this.album,
    required this.artists,
    required this.logo,
  });
  final String album, artists;
  final IconData logo;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Stack(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 42, 42, 42),
                      borderRadius: BorderRadius.circular(30)),
                ),
                Positioned(
                  top: 5,
                  left: 5,
                  child: Icon(
                    logo,
                    size: 40,
                    color: Color(0xFF51D779),
                  ),
                )
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  album,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  artists,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white70,
                      fontWeight: FontWeight.w400),
                )
              ],
            )
          ],
        ),
        Icon(
          Icons.share,
          color: Colors.white,
          size: 30,
        )
      ],
    );
  }
}

class Hashtags extends StatelessWidget {
  const Hashtags({
    super.key,
    required this.hastags,
  });
  final String hastags;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 42, 42, 42),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          hastags,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class Facilities extends StatelessWidget {
  const Facilities({
    super.key,
    required this.Image,
    required this.name,
  });

  final String Image, name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(Image),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              name,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ],
    );
  }
}
