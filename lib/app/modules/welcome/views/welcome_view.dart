import 'package:ajheryuk/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: Get.width * 0.6,
                height: Get.width * 0.6,
                child: Image.asset(
                  "assets/logo/logo.png",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 100),
              Text(
                "Welcome to Ajheryuk",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Best and popular apps for live education course from home",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Color(0xFF8C8C8C)),
              ),
              SizedBox(height: 75),
              Container(
                width: Get.width,
                child: ElevatedButton(
                  onPressed: () => Get.toNamed(Routes.LOGIN),
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFEC5F5F),
                      padding: EdgeInsets.symmetric(vertical: 20)),
                ),
              ),
            ],
          ),
        ));
  }
}
