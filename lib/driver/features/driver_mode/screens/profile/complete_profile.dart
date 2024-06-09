import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_smart/common/styles/text_styles.dart';
import 'package:go_smart/common/widgets/containers/circular_container.dart';
import 'package:go_smart/common/widgets/text_fields/text_field_with_title.dart';
import 'package:go_smart/driver/features/driver_mode/screens/profile/widget/language_dropdown.dart';
import 'package:go_smart/features/authentication/screens/complete_your_profile/widgets/birthdate_dropdowns.dart';
import 'package:go_smart/features/authentication/screens/complete_your_profile/widgets/gender_dropdown.dart';
import 'package:go_smart/features/authentication/screens/complete_your_profile/widgets/phone_number_text_field.dart';
import 'package:go_smart/utils/constants/colors.dart';
import 'package:go_smart/utils/constants/image_strings.dart';
import 'package:go_smart/utils/constants/sizes.dart';

class DriverCompleteProfileScreen extends StatelessWidget {
  const DriverCompleteProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(CSizes.defaultSpace),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //? title and subtitle
                  const Text("Complete Your Profile",
                      style: CTextStyles.textStyle24),
                  const SizedBox(height: CSizes.spaceBtwItems),
                  Text(
                    "don’t worry only you can see or edit your personal data",
                    style: CTextStyles.textStyle16
                        .copyWith(color: CColors.darkGrey),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: CSizes.spaceBtwItems),

                  //? icon with circular grey background
                  CCircularContainer(child: SvgPicture.asset(CImages.account,height: 45,)),
                  const SizedBox(height: CSizes.spaceBtwItems),
                  const CTextFieldWithTitle(
                      hintText: "ex:Ahmed", title: "Name"),
                  const SizedBox(height: CSizes.spaceBtwInputFields),

                  //? phone number drop down with text field
                  const CPhoneNumberTextField(),
                  const SizedBox(
                    height: CSizes.spaceBtwInputFields,
                  ),

                  //? gender drop down
                  const CGenderDropDown(),
                  const SizedBox(
                    height: CSizes.spaceBtwInputFields,
                  ),

                  //? birth date dropdowns
                  const CBirthDateDropDowns(),
                  const SizedBox(
                    height: CSizes.spaceBtwItems,
                  ),
                  const CTextFieldWithTitle(
                      hintText: "example.com", title: "Contact Link"),
                  const SizedBox(
                    height: CSizes.spaceBtwItems,
                  ),
                  const CLanguageDropDown(),
                  const SizedBox(
                    height: CSizes.spaceBtwItems,
                  ),
                  const CTextFieldWithTitle(
                    hintText: "",
                    title: "Write about Your self",
                    maxLines: 2,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
