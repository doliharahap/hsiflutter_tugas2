import 'package:ajheryuk/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          Container(
              height: 140,
              child: Image.asset(
                "assets/logo/logo_only.png",
                fit: BoxFit.contain,
              )),
          TextField(
            decoration: InputDecoration(
              label: Text(
                "Email",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                ),
              ),
              border: InputBorder.none,
              fillColor: Color(0xFFF6F7FA),
              filled: true,
            ),
          ),
          SizedBox(height: 10),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              label: Text(
                "Password",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                ),
              ),
              border: InputBorder.none,
              fillColor: Color(0xFFF6F7FA),
              filled: true,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: Get.width,
            child: ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.HOME),
              child: Text(
                "Log in",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFEC5F5F),
                  padding: EdgeInsets.symmetric(vertical: 20)),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text("Forgot Password?"),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                  child: Container(
                color: Color(0xFFC7C9D9),
                height: 0.5,
                margin: EdgeInsets.only(right: 20),
              )),
              Text("or"),
              Expanded(
                  child: Container(
                color: Color(0xFFC7C9D9),
                height: 0.5,
                margin: EdgeInsets.only(left: 20),
              ))
            ],
          ),
          SizedBox(height: 20),
          Container(
            width: Get.width,
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/icon/facebook.png"),
                  SizedBox(width: 10),
                  Text(
                    "Log In with Facebook",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0082CD),
                  padding: EdgeInsets.symmetric(vertical: 20)),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: Get.width,
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/icon/google.png"),
                  SizedBox(width: 10),
                  Text(
                    "Log In with Google",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFEEEEEE),
                  padding: EdgeInsets.symmetric(vertical: 20)),
            ),
          ),
          SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't Have Account? "),
              TextButton(
                onPressed: () => Get.offAllNamed(Routes.NEWACCOUNT),
                child: Text("Sign Up"),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
