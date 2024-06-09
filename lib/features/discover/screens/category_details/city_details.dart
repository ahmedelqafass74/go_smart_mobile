import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:go_smart/common/styles/text_styles.dart';
import 'package:go_smart/common/widgets/cards/detail_card.dart';
import 'package:go_smart/common/widgets/section_headline.dart';
import 'package:go_smart/features/discover/screens/category_details/landmark_details.dart';
import 'package:go_smart/features/discover/screens/category_details/widgets/top_container.dart';
import 'package:go_smart/utils/constants/colors.dart';
import 'package:go_smart/utils/constants/image_strings.dart';
import 'package:go_smart/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';

class CityDetailsScreen extends StatelessWidget {
  const CityDetailsScreen({super.key, required this.image, required this.location});

  final String image;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          TopContainer(image: image),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: CColors.primary,
                  size: 24,
                ),
                Text(
                  location,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
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
                  style: CTextStyles.textStyle16.copyWith(decoration: TextDecoration.underline,color: CColors.primary),
                ),
                const SizedBox(
                  height: CSizes.spaceBtwItems,
                ),
                const ReadMoreText(
                  'Alexandria, the second-largest city in Egypt, is a captivating blend of ancient grandeur and modern vibrancy. Nestled on the Mediterranean coast, it has been a beacon of culture and learning since its foundation by Alexander the Great in 331 BC. Over the centuries',
                  trimLines: 4,
                  style: TextStyle(color: Colors.black),
                  colorClickableText: CColors.primary,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: ' Collapse ',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: CustomSectionHeadline(
                    headText: 'popular places',
                    onTap: () {},
                    seeAll: 'SeeAll',
                  ),
                ),
                CDetailCard(
                  title: 'The Royal Jewelry Museum',
                  subtitle: 'Alexandria',
                  review: '(13 Review)',
                  isSaved: true,
                  image: CImages.landmark4,
                  onTap: (){
                    Get.to(() => const LandmarkDetailsScreen(image: CImages.landmark4));
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: CustomSectionHeadline(
                    headText: 'Restaurant&Cafe',
                    onTap: () {},
                    seeAll: 'SeeAll',
                  ),
                ),
                const CDetailCard(
                  title: 'Chez Gaby',
                  subtitle: 'Alexandria',
                  review: '(13 Review)',
                  isSaved: true,
                  image: 'assets/images/image 2.jpg',
                  additionalText: "Italian food",
                  rating: "4.2",
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: CustomSectionHeadline(
                    headText: 'Hotels',
                    onTap: () {},
                    seeAll: 'SeeAll',
                  ),
                ),
                const CDetailCard(
                  title: 'Four Seasons',
                  subtitle: 'Alexandria',
                  review: '(13 Review)',
                  isSaved: true,
                  image: CImages.hotel2,
                  additionalText: r"25$ per night",
                  rating: "4.3",
                ),
                const SizedBox(height: CSizes.spaceBtwItems)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
