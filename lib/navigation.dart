import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:traver/screens/homepage/homepage.dart';
import 'package:traver/screens/my_trips/my_trips.dart';
import 'package:traver/screens/profile/profile.dart';
import 'package:traver/screens/wishlists/wishlists.dart';

class NavigationScreen extends StatelessWidget {
  NavigationScreen({super.key});

  final controller = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 70,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(
                icon: Icon(Iconsax.airplane), label: 'My Trips'),
            NavigationDestination(
                icon: Icon(Iconsax.note_favorite), label: 'WishLists'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const Homepage(),
    const MyTrips(),
    const Wishlists(),
    const Profile(),
  ];
}
