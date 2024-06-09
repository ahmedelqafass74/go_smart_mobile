import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_smart/common/styles/text_styles.dart';
import 'package:go_smart/common/widgets/appbars/appbar.dart';
import 'package:go_smart/common/widgets/cards/review_card.dart';
import 'package:go_smart/utils/constants/colors.dart';
import 'package:go_smart/utils/constants/image_strings.dart';
import 'package:go_smart/utils/constants/sizes.dart';

import '../add_review/write_review.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CAppBar(
        title: "Reviews",
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                4,
                (index) => const Padding(
                  padding: EdgeInsets.only(bottom: CSizes.spaceBtwItems),
                  child: CReviewCard(
                    title: "Emyle Dav",
                    subtitle: 'France',
                    image: CImages.person,
                    review:
                        "the Royal Jewelry Museum in Alexandria was an absolute must-visit. ",
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const WriteReviewScreen());
                },
                child: Text(
                  "Write your Review",
                  style: CTextStyles.textStyle16.copyWith(
                      color: CColors.primary,
                      decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
