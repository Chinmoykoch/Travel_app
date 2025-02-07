import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:traver/common/curved_edges.dart';
import 'package:traver/common/mapscreen.dart';
import 'package:traver/screens/detail_pages/navigationbar.dart';

class HotelDetailsPages extends StatelessWidget {
  const HotelDetailsPages(
      {super.key,
      required this.image,
      required this.name,
      required this.location,
      required this.description,
      required this.rating,
      required this.review1,
      required this.review2});

  final String image, name, location, description, rating, review1, review2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                        name,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
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
                          Text("(50)")
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
                        style:
                            TextStyle(fontSize: 16, color: Color(0XFF1A1A1A)),
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
                        color: Color(0xFF1A1A1A)),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Facilities",
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Facilities(
                          facility: "Swimming",
                          logo: Icon(Icons.pool),
                        ),
                        Facilities(
                          facility: "Park",
                          logo: Icon(Icons.park_sharp),
                        ),
                        Facilities(
                          facility: "Restaurant",
                          logo: Icon(FontAwesomeIcons.utensils),
                        ),
                        Facilities(
                          facility: "Spa",
                          logo: Icon(Icons.spa),
                        ),
                      ],
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
                        "Reviews",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF51D779)),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "view all",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  Reviews(
                    image: "assets/splash_screens/user.png",
                    name: review1,
                    time: "2 weeks ago",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Reviews(
                      image: "assets/splash_screens/user.png",
                      name: review2,
                      time: " 1 month go"),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Contact Us",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF51D779)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Contactmail(
                    logo: Icons.mail_outline,
                    mail: "oberoitowers123@gmail.com",
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  ContactPhone(
                    number: "+010-1258-152",
                    logo: Icons.phone,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const HotelNavigationBar(),
    );
  }

  Widget _circleButton(IconData icon, VoidCallback onPressed) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.8),
      ),
      child: IconButton(
        icon: Icon(icon, color: Colors.black),
        onPressed: onPressed,
      ),
    );
  }
}

class ContactPhone extends StatelessWidget {
  const ContactPhone({
    super.key,
    required this.logo,
    required this.number,
  });

  final IconData logo;
  final String number;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(logo),
            const SizedBox(
              width: 5,
            ),
            Text(number)
          ],
        ),
        Row(
          children: [
            Icon(Icons.phone_iphone),
            const SizedBox(
              width: 5,
            ),
            Text("+010-1258-152")
          ],
        ),
      ],
    );
  }
}

class Contactmail extends StatelessWidget {
  const Contactmail({
    super.key,
    required this.logo,
    required this.mail,
  });
  final IconData logo;
  final String mail;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(logo),
        const SizedBox(
          width: 5,
        ),
        Text(mail)
      ],
    );
  }
}

class Reviews extends StatelessWidget {
  const Reviews({
    super.key,
    required this.image,
    required this.name,
    required this.time,
  });
  final String image, name, time;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 25,
              child: Image.asset(image),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const Row(
                  children: [
                    Icon(Iconsax.star1),
                    Icon(Iconsax.star1),
                    Icon(Iconsax.star1),
                    Icon(Iconsax.star1),
                  ],
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            const Icon(Iconsax.clock),
            const SizedBox(
              width: 4,
            ),
            Text(time)
          ],
        )
      ],
    );
  }
}

class Facilities extends StatelessWidget {
  const Facilities({
    super.key,
    required this.logo,
    required this.facility,
  });
  final String facility;
  final Icon logo;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [logo, Text(facility)],
    );
  }
}
