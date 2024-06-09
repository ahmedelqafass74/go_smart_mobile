import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_smart/common/widgets/cards/tourguide_card.dart';
import 'package:go_smart/features/planing/screens/confirm_booking/tourguides_plan_confirm_booking.dart';
import 'package:go_smart/features/tourguide/screens/tourguide_profile/tourguide_profile.dart';
import 'package:go_smart/utils/constants/image_strings.dart';
import 'package:go_smart/utils/constants/sizes.dart';

class TourGuidesPlan extends StatelessWidget {
  const TourGuidesPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CTourGuideCard(
            title: "Ahmed Youssef",
            subtitle: "Alexandria",
            review: "(13 Review)",
            price: "15\$ per hour",
            image: CImages.tourguide1,
            rating: "4.2",
            onTapViewProfile: () {
              Get.to(TourguideProfileScreen(
                image: CImages.tourguide1,
                onTapBookNow: () {
                  Get.to(() => const TourGuidesPlanConfirmBookingScreen());
                },
              ));
            },
          ),
          const SizedBox(height: CSizes.spaceBtwItems),
          CTourGuideCard(
            title: "Ahmed Youssef",
            subtitle: "Alexandria",
            review: "(13 Review)",
            price: "15\$ per hour",
            image: CImages.tourguide2,
            rating: "4.2",
            onTapViewProfile: () {
              Get.to(TourguideProfileScreen(
                image: CImages.tourguide2,
                onTapBookNow: () {
                  Get.to(() => const TourGuidesPlanConfirmBookingScreen());
                },
              ));
            },
          ),
          const SizedBox(height: CSizes.spaceBtwItems),
          CTourGuideCard(
            title: "Ahmed Youssef",
            subtitle: "Alexandria",
            review: "(13 Review)",
            price: "15\$ per hour",
            image: CImages.tourguide4,
            rating: "4.2",
            onTapViewProfile: () {
              Get.to(TourguideProfileScreen(
                image: CImages.tourguide4,
                onTapBookNow: () {
                  Get.to(() => const TourGuidesPlanConfirmBookingScreen());
                },
              ));
            },
          ),
        ],
      ),
    );
  }
}
