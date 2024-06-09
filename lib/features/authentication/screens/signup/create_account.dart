import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:go_smart/common/styles/text_styles.dart';
import 'package:go_smart/common/widgets/buttons/elevated_button.dart';
import 'package:go_smart/common/widgets/buttons/social_button.dart';
import 'package:go_smart/common/widgets/text_fields/text_field_with_title.dart';
import 'package:go_smart/features/authentication/controllers/signup/singup_controller.dart';
import 'package:go_smart/features/authentication/screens/permissions/notification_permission.dart';
import 'package:go_smart/utils/constants/colors.dart';
import 'package:go_smart/utils/constants/sizes.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    SignUpController controller = Get.put(SignUpController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      const Text(
                        'Create Account',
                        style: CTextStyles.textStyle24,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'fill your information below or register with ',
                        style: CTextStyles.textStyle16
                            .copyWith(color: CColors.darkGrey),
                      ),
                      Text(
                        ' your social account',
                        style: CTextStyles.textStyle16
                            .copyWith(color: CColors.darkGrey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: CSizes.spaceBtwItems),
            const CTextFieldWithTitle(
                hintText: 'ex:AHMED', title: 'Name', obSecure: false),
            const SizedBox(height: CSizes.spaceBtwInputFields),
            const CTextFieldWithTitle(
              hintText: 'example@gmail.com',
              title: 'Email',
              obSecure: false,
            ),
            const SizedBox(height: CSizes.spaceBtwInputFields),
            const CTextFieldWithTitle(
              hintText: '*****',
              title: 'Password',
              obSecure: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Checkbox(
                    value: controller.isChecked.value,
                    onChanged: (value) {
                      controller.isChecked.value = value!;
                    },
                  ),
                ),
                const Text(
                  'Agree with ',
                  style: CTextStyles.textStyle16,
                ),
                Text(
                  'Term&Conditions',
                  style:
                      CTextStyles.textStyle16.copyWith(color: CColors.primary),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: CSizes.md, horizontal: CSizes.sm),
              child: CElevatedButton(
                onPressed: () {
                  Get.offAll(() => const NotificationPermissionScreen());
                },
                child: const Text(
                  'Sign up',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: CColors.primary,
                      ),
                    ),
                  ),
                ),
                Text(
                  'Or sign up  with',
                  style:
                      CTextStyles.textStyle16.copyWith(color: CColors.darkGrey),
                ),
                Container(
                  width: 100,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: CColors.primary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: CSizes.spaceBtwItems),
            SizedBox(
              height: 32,
              width: 144,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialButton(onTap: () {}, icon: FontAwesomeIcons.apple),
                  const SizedBox(
                    width: 14,
                  ),
                  SocialButton(onTap: () {}, icon: FontAwesomeIcons.google),
                  const SizedBox(
                    width: 14,
                  ),
                  SocialButton(onTap: () {}, icon: FontAwesomeIcons.facebook),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account? ',
                  style:
                      CTextStyles.textStyle16.copyWith(color: CColors.darkGrey),
                ),
                GestureDetector(
                  onTap: () {},
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, 'SignInScreen');
                    },
                    child: Text(
                      'sign in',
                      style: CTextStyles.textStyle16
                          .copyWith(color: CColors.primary),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
