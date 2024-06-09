import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:go_smart/common/styles/text_styles.dart';
import 'package:go_smart/common/widgets/cards/review_card.dart';
import 'package:go_smart/common/widgets/images/rounded_image.dart';
import 'package:go_smart/common/widgets/section_headline.dart';
import 'package:go_smart/features/discover/screens/Reviews/reviews.dart';
import 'package:go_smart/features/discover/screens/category_details/widgets/top_container.dart';
import 'package:go_smart/utils/constants/colors.dart';
import 'package:go_smart/utils/constants/image_strings.dart';
import 'package:go_smart/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';

class FoodDetailsScreen extends StatelessWidget {
  const FoodDetailsScreen({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          TopContainer(
            image: image,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: CColors.primary,
                  size: 24,
                ),
                const SizedBox(width: CSizes.sm),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Koshary Abou Tarek',
                      style: CTextStyles.textStyle16,
                    ),
                    Text(
                      'Cairo',
                      style: CTextStyles.textStyle14
                          .copyWith(color: CColors.darkGrey),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(
                  FontAwesomeIcons.solidBookmark,
                  color: CColors.primary,
                  size: 20,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'OverView',
                  style: CTextStyles.textStyle16.copyWith(
                      decoration: TextDecoration.underline,
                      color: CColors.primary,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: CSizes.spaceBtwItems,
                ),
                const ReadMoreText(
                  "Their main focus is koshary, a traditional Egyptian dish made with rice, macaroni, lentils, chickpeas, fried onions, and a spicy tomato sauce. They offer various sizes and options, some with extra toppings like crispy fried onions or vinegar.",
                  trimLines: 4,
                  style: TextStyle(color: Colors.black),
                  colorClickableText: CColors.primary,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: ' Collapse ',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: CSizes.spaceBtwItems),
                  child: Text(
                    'Visitor information:',
                    style: CTextStyles.textStyle16.copyWith(
                        color: CColors.primary, fontWeight: FontWeight.w600),
                  ),
                ),
                const Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on, color: CColors.primary),
                        SizedBox(width: CSizes.sm),
                        Expanded(
                          child: Text(
                              "16 Maarouf St., Champollion Rd Near To High Court House, Cairo 11511 Egypt"),
                        )
                      ],
                    ),
                    SizedBox(height: CSizes.sm),
                    Row(
                      children: [
                        Icon(Icons.access_time, color: CColors.primary),
                        SizedBox(width: CSizes.sm),
                        Text("Opening hours: 6:00 AM to 11:00 PM daily.")
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: CSizes.spaceBtwItems),
                  child: Text(
                    'Gallery',
                    style: CTextStyles.textStyle16.copyWith(
                        color: CColors.primary, fontWeight: FontWeight.w600),
                  ),
                ),
                Row(
                  children: [
                    ...List.generate(
                      4,
                      (i) => const Padding(
                        padding: EdgeInsets.only(right: CSizes.sm),
                        child: CRoundedImage(
                          image: CImages.food2,
                          width: 60,
                          height: 72,
                          radius: CSizes.borderRadiusMd,
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
                //? /////
                //? reviews
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: CustomSectionHeadline(
                    headText: 'Reviews',
                    headTextStyle: CTextStyles.textStyle16.copyWith(
                        color: CColors.primary, fontWeight: FontWeight.w600),
                    onTap: () {
                      Get.to(() => const ReviewsScreen());
                    },
                    seeAll: 'SeeAll',
                  ),
                ),
                const CReviewCard(
                  title: "Emyle Dav",
                  subtitle: "France",
                  image: "assets/images/person.png",
                  review:
                      "the Royal Jewelry Museum in Alexandria was an absolute must-visit. ",
                ),
                const SizedBox(height: CSizes.spaceBtwSections)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
