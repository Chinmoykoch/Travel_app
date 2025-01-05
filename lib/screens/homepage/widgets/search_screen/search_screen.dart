import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: height * .02, left: 16, right: 16),
        child: Column(
          children: [
            Container(
              width: width * .9,
              height: height * .06,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 239, 239),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Favorite Place',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      const Spacer(),
                      Text(
                        'Explore',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
