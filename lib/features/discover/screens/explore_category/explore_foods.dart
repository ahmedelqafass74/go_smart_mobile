import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:go_smart/common/styles/text_styles.dart';
import 'package:go_smart/common/widgets/appbars/appbar.dart';
import 'package:go_smart/common/widgets/cards/detail_card.dart';
import 'package:go_smart/common/widgets/text_fields/search_field.dart';
import 'package:go_smart/features/discover/screens/category_details/food_details.dart';
import 'package:go_smart/utils/constants/colors.dart';
import 'package:go_smart/utils/constants/image_strings.dart';
import 'package:go_smart/utils/constants/sizes.dart';

class ExploreFoodsScreen extends StatelessWidget {
  const ExploreFoodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List restaurants = [
      [CImages.food2, "Koshary Abou Tarek"],
      [CImages.food3, "Gad"],
      [CImages.food4, "Cairo Kitchen"],
      [CImages.food5, "El Kababgy"],
      [CImages.food6, "Sabrin Fish"],
      [CImages.food7, "Le Steak Restaurant"],
    ];
    return Scaffold(
      appBar: CAppBar(
        title: "Explore All Restaurants",
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
              itemCount: restaurants.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: CSizes.defaultSpace),
                child: CDetailCard(
                  image: restaurants[index][0],
                  title: restaurants[index][1],
                  subtitle: 'Cairo',
                  review: "(50 Review)",
                  isSaved: false,
                  rating: "4.8",
                  additionalText: "Egyptian food",
                  margin: const EdgeInsets.symmetric(
                      horizontal: CSizes.defaultSpace),
                  onTapViewDetails: () {
                    Get.to(() => FoodDetailsScreen(image: restaurants[index][0],));
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
