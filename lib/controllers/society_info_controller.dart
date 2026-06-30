import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:society_app/routing/app_routes.dart';

class SocietyInfoController extends GetxController {

  //=========================================================
  // Form Key
  //=========================================================

  final GlobalKey<FormState> formKey =
  GlobalKey<FormState>();

  //=========================================================
  // Text Controllers
  //=========================================================

  final TextEditingController cityController =
  TextEditingController();

  final TextEditingController stateController =
  TextEditingController();

  final TextEditingController societyController =
  TextEditingController();

  final TextEditingController towerController =
  TextEditingController();

  final TextEditingController flatController =
  TextEditingController();

  //=========================================================
  // Open City Selection
  //=========================================================

  Future<void> openCitySelection() async {

    final result = await Get.toNamed(
      Routes.selection,
      arguments: {
        "title": "Select City",
        "type": "city",
      },
    );

    if (result != null) {
      cityController.text = result;
    }
  }

  //=========================================================
  // Open State Selection
  //=========================================================

  Future<void> openStateSelection() async {

    final result = await Get.toNamed(
      Routes.selection,
      arguments: {
        "title": "Select State",
        "type": "state",
      },
    );

    if (result != null) {
      stateController.text = result;
    }
  }

  //=========================================================
  // Open Society Selection
  //=========================================================

  Future<void> openSocietySelection() async {

    final result = await Get.toNamed(
      Routes.selection,
      arguments: {
        "title": "Select Society",
        "type": "society",
      },
    );

    if (result != null) {
      societyController.text = result;
    }
  }

  //=========================================================
  // Continue Registration
  //=========================================================

  void continueRegistration() {

    final bool isValid =
        formKey.currentState?.validate() ?? false;

    if (!isValid) {
      return;
    }

    /// TODO:
    /// Call Registration API

    Get.snackbar(
      "Success",
      "Society Information Saved Successfully",
      snackPosition: SnackPosition.BOTTOM,
    );

    // Example:
    // Get.offAllNamed(Routes.login);
  }

  //=========================================================
  // Dispose Controllers
  //=========================================================

  @override
  void onClose() {

    cityController.dispose();

    stateController.dispose();

    societyController.dispose();

    towerController.dispose();

    flatController.dispose();

    super.onClose();
  }
}