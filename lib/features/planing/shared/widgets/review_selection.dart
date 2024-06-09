import 'package:flutter/material.dart';
import 'package:go_smart/common/styles/text_styles.dart';
import 'package:go_smart/features/planing/shared/widgets/review_selection_tab_body.dart';
import 'package:go_smart/utils/constants/colors.dart';
import 'package:go_smart/utils/constants/sizes.dart';

class ReviewSelection extends StatelessWidget {
  const ReviewSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          const Text("Review of your selected plan",style: CTextStyles.textStyle16,textAlign: TextAlign.center,),
          const SizedBox(height: CSizes.spaceBtwItems),
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
                ReviewSelectionTapBody(),
                ReviewSelectionTapBody(),
                ReviewSelectionTapBody(),
              ]),
            ),
          )
        ],
      ),
    );
  }
}

