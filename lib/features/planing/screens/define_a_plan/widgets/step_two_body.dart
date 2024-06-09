import 'package:flutter/material.dart';
import 'package:go_smart/common/styles/text_styles.dart';
import 'package:go_smart/common/widgets/cards/plan_card.dart';
import 'package:go_smart/common/widgets/section_headline.dart';
import 'package:go_smart/utils/constants/colors.dart';
import 'package:go_smart/utils/constants/image_strings.dart';
import 'package:go_smart/utils/constants/sizes.dart';

class StepTwoBody extends StatelessWidget {
  const StepTwoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
              labelStyle: CTextStyles.textStyle14.copyWith(color: Colors.black),
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelColor: CColors.darkGrey,
              indicatorColor: Colors.black,
              indicatorWeight: 3,
              tabs: const [
                Tab(text: "Day 1"),
                Tab(text: "Day 2"),
                Tab(text: "Day 3"),
              ]),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: CSizes.sm),
              child: TabBarView(children: [
                TabBody(),
                TabBody(),
                TabBody(),
              ]),
            ),
          )
        ],
      ),
    );
  }
}

class TabBody extends StatelessWidget {
  const TabBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        CustomSectionHeadline(
          headText: "Restaurants",
          onTap: () {},
          seeAll: "See All",
        ),
        const SizedBox(height: CSizes.spaceBtwItems),
        ...List.generate(
          3,
          (index) => const CPlanCard(
            title: "Roberto's  Restaurant",
            review: "(50 Review)",
            image: CImages.hotel2,
            isSelected: true,
            price: "Start from 20\$",
            margin: EdgeInsets.only(bottom: CSizes.spaceBtwItems),
          ),
        ),
        CustomSectionHeadline(
          headText: "Places to visit",
          onTap: () {},
          seeAll: "See All",
        ),
        const SizedBox(height: CSizes.spaceBtwItems),
        ...List.generate(
          3,
          (index) => const CPlanCard(
            title: "Montazah Gardens",
            review: "(50 Review)",
            image: CImages.landmark5,
            isSelected: true,
            margin: EdgeInsets.only(bottom: CSizes.spaceBtwItems),
          ),
        )
      ]),
    );
  }
}
