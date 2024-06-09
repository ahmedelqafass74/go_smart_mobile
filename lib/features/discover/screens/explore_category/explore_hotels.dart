import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:go_smart/common/styles/text_styles.dart';
import 'package:go_smart/common/widgets/appbars/appbar.dart';
import 'package:go_smart/common/widgets/cards/detail_card.dart';
import 'package:go_smart/common/widgets/text_fields/search_field.dart';
import 'package:go_smart/features/discover/screens/category_details/hotel_details.dart';
import 'package:go_smart/utils/constants/colors.dart';
import 'package:go_smart/utils/constants/image_strings.dart';
import 'package:go_smart/utils/constants/sizes.dart';

class ExploreHotelsScreen extends StatelessWidget {
  const ExploreHotelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List hotels = [
      [CImages.hotel4,"Rixos Alamein","Cairo"],
      [CImages.hotel1,"Kempinski Hotel","Safaga"],
      [CImages.hotel5,"Hilton Luxor","Luxor"],
      [CImages.hotel6,"Kempinski Nile  Cairo","Cairo"],
      [CImages.hotel7,"Iberotel Costa Mares","Marsa allam"],
      [CImages.hotel8,"Movenpick Resort Aswan","Aswan"],
    ];
    return Scaffold(
      appBar: CAppBar(
        title: "Explore All Hotels",
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
              itemCount: hotels.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: CSizes.defaultSpace),
                child: CDetailCard(
                  image: hotels[index][0],
                  title: hotels[index][1],
                  subtitle: hotels[index][2],
                  review: "(13 Review)",
                  additionalText: r"602$ per night",
                  isSaved: true,
                  rating: "4.3",
                  onTapViewDetails: () {
                    Get.to(() => HotelDetailsScreen(image:hotels[index][0],));
                  },
                  margin: const EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
