import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_smart/features/planing/screens/define_a_plan/define_a_plan.dart';
import 'package:go_smart/utils/helpers/helper_functions.dart';

class PlanATripController extends GetxController {
  late String selectedDate;

  late TextEditingController dateController;
  late TextEditingController nameController;
  late TextEditingController destinationController;
  late GlobalKey<FormState> formKey;

  showDatePicker(context) async {
    DateTime? picked = await CHelperFunctions.pickDate(context: context);
    selectedDate = CHelperFunctions.getFormattedDate(picked ?? DateTime.now(),
        format: "dd/MM/yyy");
    dateController.text = selectedDate;
  }

  toDefineAPlanScreen() {
    if (formKey.currentState!.validate()) {
      Get.off(
        () => DefineAPlanScreen(
          planName: nameController.text,
        ),
      );
    }
  }

  @override
  void onInit() {
    super.onInit();
    dateController = TextEditingController();
    nameController = TextEditingController();
    destinationController = TextEditingController();
    formKey = GlobalKey<FormState>();
  }
}
