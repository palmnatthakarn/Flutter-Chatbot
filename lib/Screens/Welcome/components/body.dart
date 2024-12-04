import 'package:flutter/material.dart';
import 'package:project_test/Screens/Login/login_screen.dart';
import 'package:project_test/Screens/Welcome/components/background.dart';
import 'package:project_test/components/rounded_button.dart';
import 'package:project_test/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      key: Key("backgroundkey"),
      child: Stack(
        children: [
          Positioned(
            top: 0, // ระยะห่างจากด้านบน
            left: -13, // ระยะห่างจากด้านซ้าย
            child: Image.asset(
              "assets/images/logo.png",
              height: size.height * 0.5,
            ),
          ), // Positioned สำหรับรูปภาพ
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 200),
                  Text(
                    "Welcome !",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
                  ),
                  Text(
                    "to chatbot",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(height: 100),
                  RoundedButton(
                    text: "Create Account",
                    width: 0,
                    press: () {},
                  ),
                  RoundedButton(
                    text: "Log In",
                    color: kPrimaryLightColor,
                    textColor: kPrimaryColor,
                    width: 0,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const LoginScreen(); //ถึงตรงนี้
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ), // Center สำหรับข้อความ
        ],
      ),
    );
  }
}
