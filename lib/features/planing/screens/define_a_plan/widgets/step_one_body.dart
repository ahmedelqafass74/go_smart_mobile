import 'package:flutter/material.dart';
import 'package:go_smart/common/styles/text_styles.dart';
import 'package:go_smart/common/widgets/cards/plan_card.dart';
import 'package:go_smart/utils/constants/colors.dart';
import 'package:go_smart/utils/constants/image_strings.dart';
import 'package:go_smart/utils/constants/sizes.dart';

class StepOneBody extends StatelessWidget {
  const StepOneBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Where to stay?",
            style:
                CTextStyles.textStyle20.copyWith(fontWeight: FontWeight.w500)),
        const SizedBox(height: CSizes.spaceBtwItems),
        Text("mix of charming and modern hotels",
            style: CTextStyles.textStyle14.copyWith(color: CColors.primary)),
        const SizedBox(height: CSizes.spaceBtwItems),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: List.generate(
                5,
                (index) => const CPlanCard(
                  margin: EdgeInsets.only(bottom: 10),
                  title: "Sheraton Montazah",
                  review: "(22 Review)",
                  image: CImages.hotel1,
                  isSelected: true,
                  price: "Start from 20\$",
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
