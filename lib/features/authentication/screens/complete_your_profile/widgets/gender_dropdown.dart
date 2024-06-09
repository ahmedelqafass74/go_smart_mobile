import 'package:flutter/material.dart';
import 'package:go_smart/common/widgets/containers/rounded_container.dart';

import 'dropdown.dart';

class CGenderDropDown extends StatelessWidget {
  const CGenderDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            "Gender",
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
              items: ["Male", "Female"],
            ),
          ),
        ),
      ],
    );
  }
}
