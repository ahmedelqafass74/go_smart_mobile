import 'package:flutter/material.dart';
import 'package:go_smart/common/widgets/containers/rounded_container.dart';
import 'package:go_smart/features/authentication/screens/complete_your_profile/widgets/dropdown.dart';
import 'package:go_smart/utils/constants/sizes.dart';
import 'package:go_smart/utils/helpers/generator.dart';

class CBirthDateDropDowns extends StatelessWidget {
  const CBirthDateDropDowns({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Text(
          "Birth Date",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: CRoundedContainer(
              radius: 12,
              height: 60,
              child: CDropDownMenu(
                items: CGenerator.getDays(),
                hintText: "Day",
                // width: 200,
              ),
            ),
          ),
          const SizedBox(width: CSizes.sm),
          Expanded(
            child: CRoundedContainer(
              radius: 12,
              height: 60,
              child: CDropDownMenu(
                items: CGenerator.getMonths(),
                hintText: "month",
              ),
            ),
          ),
          const SizedBox(width: CSizes.sm),
          Expanded(
            child: CRoundedContainer(
              radius: 12,
              height: 60,
              child: CDropDownMenu(
                items: CGenerator.getYears(1950),
                hintText: "year",
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}
