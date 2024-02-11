import 'package:get/get.dart';

import '../controllers/newaccount_controller.dart';

class NewaccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewaccountController>(
      () => NewaccountController(),
    );
  }
}
