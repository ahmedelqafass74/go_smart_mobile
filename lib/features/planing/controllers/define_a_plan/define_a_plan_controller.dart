import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_smart/features/planing/screens/define_a_plan/widgets/plan_tourguides.dart';
import 'package:go_smart/features/planing/screens/define_a_plan/widgets/step_one_body.dart';
import 'package:go_smart/features/planing/screens/define_a_plan/widgets/step_three_body.dart';
import 'package:go_smart/features/planing/screens/define_a_plan/widgets/step_two_body.dart';
import 'package:go_smart/features/planing/shared/widgets/review_selection.dart';

class DefineAPlanController extends GetxController {
  int currentStep = 1;
  bool hideButtons = false;
  bool withTourguide = true;
  Widget currentScreen = const StepOneBody();
  List steps = [
    const StepOneBody(), //0
    const StepTwoBody(), //1
    const StepThreeBody(), //2
  ];
  void nextStep() {
    if (currentStep < 3) {
      currentStep++; //2
      currentScreen = steps[currentStep - 1];
      update();
    } else if (currentStep == 3) {
      currentStep = 4;
      update();
    }
  }

  void backStep() {
    if (currentStep != 1) {
      currentStep--;
      currentScreen = steps[currentStep - 1];
    }
    update();
  }

  void toReviewSelection() {
    hideButtons = true;
    currentScreen = const ReviewSelection();
    update();
  }

  void reload(){
    update();
  }

  void toPlanWithTourguide() {
    currentScreen = const TourGuidesPlan();
    update();
  }
}
