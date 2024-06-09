import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_smart/common/styles/text_styles.dart';
import 'package:go_smart/common/widgets/appbars/appbar.dart';
import 'package:go_smart/common/widgets/buttons/elevated_button.dart';
import 'package:go_smart/features/planing/screens/go_smart_no_guide/no_guide.dart';
import 'package:go_smart/common/widgets/text_fields/stadium_text_field.dart';
import 'package:go_smart/features/planing/shared/widgets/question_and_two_radio_buttons.dart';
import 'package:go_smart/utils/constants/sizes.dart';
import 'package:go_smart/utils/helpers/helper_functions.dart';

import '../go_smart_with_guide/with_guide.dart';

class TryToGoSmartScreen extends StatefulWidget {
  const TryToGoSmartScreen({super.key});

  @override
  State<TryToGoSmartScreen> createState() => _TryToGoSmartScreenState();
}

class _TryToGoSmartScreenState extends State<TryToGoSmartScreen> {
  bool withTourguide = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CAppBar(title: "Plan a trip"),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                const CStadiumTextField(
                  title: " please name your trip",
                  hintText: "name",
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //     return "This field is required";
                  //   }
                  //   return null;
                  // },
                ),
                const CStadiumTextField(
                  title: " select your destination",
                  hintText: "search",
                  icon: Icon(Icons.search),
                ),
                CStadiumTextField(
                  title: " Select Date",
                  hintText: "DD/MM/YY",
                  icon: const Icon(Icons.calendar_month),
                  onTap: () {
                    CHelperFunctions.pickDate(context: context);
                  },
                  readOnly: true,
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //     return "This field is required";
                  //   }
                  //   return null;
                  // },
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: CSizes.defaultSpace),
                      child: Text(
                        " Select Rating",
                        style: CTextStyles.textStyle20,
                      ),
                    ),
                    SizedBox(height: CSizes.spaceBtwItems),
                    Row(
                      children: [
                        Expanded(
                            child: CStadiumTextField(
                          hintText: "From",
                          centerHint: true,
                        )),
                        Expanded(
                            child: CStadiumTextField(
                          hintText: "To",
                          centerHint: true,
                        )),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: CSizes.spaceBtwItems),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: CSizes.defaultSpace),
                  child: CQuestionWithTwoRadioButtons(
                    question:
                        "Would you be interested in adding a personalized tour guide to your trip?",
                    onYesSelected: () {
                      setState(() {
                        withTourguide = true;
                      });
                    },
                    onNoSelected: () {
                      setState(() {
                        withTourguide = false;
                      });
                    },
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(height: CSizes.spaceBtwSections),
                CElevatedButton(
                  onPressed: () {
                    Get.to(() => withTourguide
                        ? const GoSmartWithGuideScreen(
                            cityName: 'Cairo',
                          )
                        : const GoSmartNoGuideScreen(cityName: "Cairo"));
                  },
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                      horizontal: CSizes.defaultSpace),
                  child: const Text("Create plan "),
                ),
                const SizedBox(height: CSizes.spaceBtwItems),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
