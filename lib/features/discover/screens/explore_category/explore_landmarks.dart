import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:go_smart/common/styles/text_styles.dart';
import 'package:go_smart/common/widgets/appbars/appbar.dart';
import 'package:go_smart/common/widgets/cards/detail_card.dart';
import 'package:go_smart/common/widgets/text_fields/search_field.dart';
import 'package:go_smart/features/discover/screens/category_details/landmark_details.dart';
import 'package:go_smart/utils/constants/colors.dart';
import 'package:go_smart/utils/constants/image_strings.dart';
import 'package:go_smart/utils/constants/sizes.dart';

class ExploreLandmarksScreen extends StatelessWidget {
  const ExploreLandmarksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List landmarks = [
      [CImages.landmark4, "The Royal Jewelry Museum", "Alexandria"],
      [CImages.landmark1, "Citadel of Qaitbay", "Alexandria"],
      [CImages.landmark5, "Egyptian Museum", "Cairo"],
      [CImages.landmark2, "The Valley of the Kings", "Luxor"],
      [CImages.landmark6, "Mount Sinai", "Sinai"],
      [CImages.landmark7, "Blue Hole", "Dahab"],
    ];
    return Scaffold(
      appBar: CAppBar(
        title: "Explore All Landmarks",
        titleStyle: CTextStyles.textStyle20,
        centerTitle: false,
        showBackArrow: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              FontAwesomeIcons.sliders,
              color: CColors.primary,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
            child: CustomSearchTextField(),
          ),
          const SizedBox(height: CSizes.spaceBtwSections),
          Expanded(
            child: ListView.builder(
              itemCount: landmarks.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: CSizes.defaultSpace),
                child: CDetailCard(
                  image: landmarks[index][0],
                  title: landmarks[index][1],
                  subtitle: landmarks[index][2],
                  review: "(13 Review)",
                  isSaved: true,
                  margin: const EdgeInsets.symmetric(
                      horizontal: CSizes.defaultSpace),
                  onTap: () {
                    Get.to(() => LandmarkDetailsScreen(image: landmarks[index][0],));
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
