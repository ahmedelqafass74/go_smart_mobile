import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:go_smart/common/styles/text_styles.dart';
import 'package:go_smart/common/widgets/appbars/appbar.dart';
import 'package:go_smart/common/widgets/images/rounded_image.dart';
import 'package:go_smart/common/widgets/text_fields/search_field.dart';
import 'package:go_smart/features/discover/screens/category_details/city_details.dart';
import 'package:go_smart/utils/constants/colors.dart';
import 'package:go_smart/utils/constants/image_strings.dart';
import 'package:go_smart/utils/constants/sizes.dart';

class ExploreCitiesScreen extends StatelessWidget {
  const ExploreCitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List cities = [
      [CImages.city6, "Giza"],
      [CImages.landmark2, "Luxor"],
      [CImages.city1, "Alexandria"],
      [CImages.city9, "Dahab"],
      [CImages.city8, "Aswan"],
      [CImages.city7, "Matruh"],
      [CImages.city5, "Port Siad"],
      [CImages.city4, "Sharm El Sheikh"],
      [CImages.city2, "Alexandria"],
    ];

    return Scaffold(
      appBar: CAppBar(
        title: "Explore All Cities",
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
      body: Padding(
        padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: Column(
          children: [
            const CustomSearchTextField(),
            const SizedBox(height: CSizes.spaceBtwSections),
            Expanded(
                child: GridView.builder(
              itemCount: cities.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: CSizes.md,
                  mainAxisSpacing: CSizes.spaceBtwSections),
              itemBuilder: (context, index) {
                return CRoundedImage(
                  onTap: () {
                    Get.to(
                      () => CityDetailsScreen(
                        image: cities[index][0],
                        location: cities[index][1],
                      ),
                    );
                  },
                  image: cities[index][0],
                  text: cities[index][1],
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
