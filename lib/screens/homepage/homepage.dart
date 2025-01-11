import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:traver/screens/homepage/widgets/city_cards.dart';
import 'package:traver/screens/homepage/widgets/event_cards.dart';
import 'package:traver/screens/homepage/widgets/event_happenings/event_happenings.dart';
import 'package:traver/screens/homepage/widgets/hotel_cards.dart';
import 'package:traver/screens/homepage/widgets/search_screen/search_screen.dart';
import '../../utils/constants/constant_data.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    final List<Map<String, String>> demoData = [
      {
        'image': 'assets/trip_packages/event_1.png',
        'title': 'Sziget',
        'location': 'Budapest',
        'time': 'Mid of August',
      },
      {
        'image': 'assets/trip_packages/event_2.png',
        'title': 'Coachella Head',
        'location': 'California',
        'time': 'April',
      },
      {
        'image': 'assets/trip_packages/event_3.jpg',
        'title': 'Glastonbury',
        'location': 'England',
        'time': 'June',
      },
      {
        'image': 'assets/trip_packages/event_4.jpg',
        'title': 'Tomorrowland',
        'location': 'Belgium',
        'time': 'July',
      },
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: height / 20, left: 16.0, right: 16.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundImage:
                            AssetImage('assets/splash_screens/user.png'),
                      ),
                      const SizedBox(width: 10),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Text(
                              'Guest',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'location',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.notifications,
                    color: Color.fromARGB(255, 102, 232, 141),
                    size: 28,
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText('Where do you want to explore today ?',
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const SearchScreen());
                },
                child: Container(
                  width: width * .9,
                  height: height * .06,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 240, 239, 239),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 15,
                        left: width * .05,
                        child: Container(
                          child: Row(
                            children: [
                              const Text(
                                'Search Destination',
                                style: TextStyle(color: Colors.grey),
                              ),
                              const SizedBox(
                                width: 1,
                              ),
                              AnimatedTextKit(
                                animatedTexts: [
                                  TyperAnimatedText(
                                    '........',
                                    textStyle: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          top: 15,
                          left: width * .8,
                          child: const Icon(
                            Icons.search,
                            color: Colors.black45,
                          ))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    const Text(
                      'Event Happenings',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => EventHappenings());
                      },
                      child: const Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF51D779),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  height: height / 3.5,
                  child: ListView.separated(
                    itemCount: demoData.length,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 10,
                    ),
                    itemBuilder: (context, index) {
                      final data = demoData[index];

                      return EventCards(
                        height: height,
                        width: width,
                        image: data['image']!,
                        title: data['title']!,
                        location: data['location']!,
                        time: data['time']!,
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Text('Best Cities to explore',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text(
                      'View all',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF51D779),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  height: height / 7,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: citiesData.length,
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 10,
                    ),
                    itemBuilder: (context, index) {
                      final cityData = citiesData[index];
                      return CityCards(
                          width: width,
                          height: height,
                          image: cityData['image']!,
                          title: cityData['name']!);
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    const Text(
                      'Best Packages',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => EventHappenings());
                      },
                      child: const Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF51D779),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
                child: SizedBox(
                  height: height / 3.8,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: hotelList.length,
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 10,
                    ),
                    itemBuilder: (context, index) {
                      final hotelData = hotelList[index];
                      return HotelCards(
                          image: hotelData['image']!,
                          name: hotelData['name']!,
                          location: hotelData['location']!,
                          rating: hotelData['rating']!,
                          user: hotelData['user']!,
                          height: height,
                          width: width);
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Text('Best Packages',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text(
                      'View all',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF51D779),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: TourPackages(width: width, height: height),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: TourPackages(width: width, height: height),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TourPackages extends StatelessWidget {
  const TourPackages({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromARGB(255, 199, 198, 198), width: .8),
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: SizedBox(
                width: width * 0.3,
                height: height * 0.12,
                child: Image.asset(
                  'assets/trip_packages/pack_1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Majestic Manali',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Icon(Iconsax.heart)
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Iconsax.location,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Himachal Pradesh',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Iconsax.timer_1),
                    Text('4 days & 3 nights'),
                  ],
                ),
                // Row(
                //   children: [
                //     Text('Rs.'),
                //     const SizedBox(
                //       width: 4,
                //     ),
                //     Text('20000'),
                //     const SizedBox(
                //       width: 2,
                //     ),
                //     Text('/person')
                //   ],
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
