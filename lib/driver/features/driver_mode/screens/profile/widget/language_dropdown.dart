import 'package:flutter/material.dart';
import 'package:go_smart/common/widgets/containers/rounded_container.dart';
import 'package:go_smart/features/authentication/screens/complete_your_profile/widgets/dropdown.dart';


class CLanguageDropDown extends StatelessWidget {
  const CLanguageDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            "Language",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
        CRoundedContainer(
          width: double.infinity,
          height: 60,
          radius: 12,
          child: SizedBox(
            width: double.infinity,
            child: CDropDownMenu(
              hintText: "select",
              items: ["English", "Arabic"],
            ),
          ),
        ),
      ],
    );
  }
}
