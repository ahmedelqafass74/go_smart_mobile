import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:go_smart/common/styles/text_styles.dart';
import 'package:go_smart/common/widgets/cards/review_card.dart';
import 'package:go_smart/common/widgets/images/rounded_image.dart';
import 'package:go_smart/common/widgets/section_headline.dart';
import 'package:go_smart/features/discover/screens/Reviews/reviews.dart';
import 'package:go_smart/features/discover/screens/category_details/widgets/property_amenities.dart';
import 'package:go_smart/features/discover/screens/category_details/widgets/top_container.dart';
import 'package:go_smart/features/discover/screens/gallery/gallery.dart';
import 'package:go_smart/utils/constants/colors.dart';
import 'package:go_smart/utils/constants/image_strings.dart';
import 'package:go_smart/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';

List<String> images = [
  CImages.gallery8,
  CImages.gallery9,
  CImages.gallery10,
  CImages.gallery11,
  CImages.gallery12,
  CImages.gallery13,
  CImages.gallery14,
  CImages.gallery15,
];

class HotelDetailsScreen extends StatelessWidget {
  const HotelDetailsScreen({super.key, required this.image});
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
                      'Kempinski Nile  Cairo',
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
                  "Situated in Cairo’s affluent Garden City district, Kempinski Nile Hotel offers luxurious rooms on the shores of the Nile RiverEach room is fitted with free Wi-Fi, free Minibar, Flat Screen TVs with satellite Channels, Free Movie Library, 24/7 Butler Service",
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
                    'Property amenities:',
                    style: CTextStyles.textStyle16.copyWith(
                        color: CColors.primary, fontWeight: FontWeight.w600),
                  ),
                ),
                //? property amenities section
                const PropertyAmenitiesSection(),

                //? Room features
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: CSizes.spaceBtwItems),
                  child: Text(
                    'Room features:',
                    style: CTextStyles.textStyle16.copyWith(
                        color: CColors.primary, fontWeight: FontWeight.w600),
                  ),
                ),
                const Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.coffee, color: CColors.primary),
                        SizedBox(width: CSizes.sm),
                        Text("Coffee / tea maker")
                      ],
                    ),
                    SizedBox(height: CSizes.sm),
                    Row(
                      children: [
                        Icon(Icons.cleaning_services, color: CColors.primary),
                        SizedBox(width: CSizes.sm),
                        Text("Housekeeping")
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
                      (i) => Padding(
                        padding: const EdgeInsets.only(right: CSizes.sm),
                        child: CRoundedImage(
                          image: images[i],
                          width: 60,
                          height: 72,
                          radius: CSizes.borderRadiusMd,
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ),
                    ),
                    CRoundedImage(
                      image: CImages.hotel2,
                      onTap: () {
                        Get.to(
                          () => GalleryScreen(
                            images: images,
                          ),
                        );
                      },
                      width: 60,
                      height: 72,
                      radius: CSizes.borderRadiusMd,
                      text: "+5",
                      mainAxisAlignment: MainAxisAlignment.center,
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
