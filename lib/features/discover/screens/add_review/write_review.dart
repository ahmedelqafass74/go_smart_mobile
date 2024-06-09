import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:go_smart/common/styles/text_styles.dart';
import 'package:go_smart/common/widgets/appbars/appbar.dart';
import 'package:go_smart/common/widgets/buttons/elevated_button.dart';
import 'package:go_smart/common/widgets/images/rounded_image.dart';
import 'package:go_smart/utils/constants/colors.dart';
import 'package:go_smart/utils/constants/image_strings.dart';
import 'package:go_smart/utils/constants/sizes.dart';

import 'widgets/write_review_textfield.dart';

class WriteReviewScreen extends StatelessWidget {
  const WriteReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CAppBar(
        title: "Write Review",
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            children: [
              const CRoundedImage(
                image: CImages.hotel1,
                height: 150,
                width: 150,
                radius: 16,
              ),
              const SizedBox(height: CSizes.spaceBtwItems),
              const Text("How was your Experience with ",
                  style: CTextStyles.textStyle16),
              const SizedBox(height: CSizes.spaceBtwItems),
              Text(
                "Name Of Service",
                style: CTextStyles.textStyle20
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: CSizes.spaceBtwItems),
              RatingBar.builder(
                itemSize: 24,
                minRating: 1,
                maxRating: 5,
                itemBuilder: (context, index) => const Icon(
                  Icons.star,
                  color: Color(0xffF4CE14),
                ),
                onRatingUpdate: (rating) {},
              ),
              const SizedBox(height: CSizes.spaceBtwItems),
              Text(
                "Write Your review",
                style: CTextStyles.textStyle16.copyWith(
                  color: CColors.primary,
                  decoration: TextDecoration.underline,
                ),
              ),
              const SizedBox(height: CSizes.spaceBtwItems),
              const WriteReviewTextField(),
              const SizedBox(height: CSizes.spaceBtwItems),
              CElevatedButton(
                onPressed: () {
                  Get.back();
                },
                width: double.infinity,
                child: const Text("Submit Review"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
