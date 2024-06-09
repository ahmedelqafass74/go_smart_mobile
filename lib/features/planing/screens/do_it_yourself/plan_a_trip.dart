import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_smart/common/widgets/appbars/appbar.dart';
import 'package:go_smart/common/widgets/buttons/elevated_button.dart';
import 'package:go_smart/common/widgets/text_fields/stadium_text_field.dart';
import 'package:go_smart/features/planing/controllers/plan_a_trip/plan_a_trip_controller.dart';
import 'package:go_smart/utils/constants/sizes.dart';

class PlanATripScreen extends StatelessWidget {
  const PlanATripScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PlanATripController controller = Get.put(PlanATripController());

    return Scaffold(
      appBar: const CAppBar(title: "plan a trip"),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                CStadiumTextField(
                  title: " please name your trip",
                  hintText: "name",
                  controller: controller.nameController,
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //     return "This field is required";
                  //   }
                  //   return null;
                  // },
                ),
                CStadiumTextField(
                  title: " select your destination",
                  hintText: "search",
                  icon: const Icon(Icons.search),
                  controller: controller.destinationController,
                ),
                CStadiumTextField(
                  title: " Select Date",
                  hintText: "DD/MM/YY",
                  icon: const Icon(Icons.calendar_month),
                  controller: controller.dateController,
                  onTap: () {
                    controller.showDatePicker(context);
                  },
                  readOnly: true,
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //     return "This field is required";
                  //   }
                  //   return null;
                  // },
                ),
                const CStadiumTextField(title: "Select Rating",hintText: "Rate",keyboardType: TextInputType.number,),
                const CStadiumTextField(title: "Select Budget",hintText: "Budget"),
                const SizedBox(height: CSizes.spaceBtwSections * 2),
                CElevatedButton(
                  onPressed: () {
                    controller.toDefineAPlanScreen();
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
