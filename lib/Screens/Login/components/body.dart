import 'package:flutter/material.dart';
import 'package:project_test/Screens/Login/components/background.dart';
import 'package:project_test/components/rounded_button.dart';
import 'package:project_test/components/rounded_input_field.dart';
import 'package:project_test/components/rounded_password_field.dart';
//import 'package:project_test/components/text_field_containner.dart';
//import 'package:project_test/constants.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Stack(
        children: [
          Positioned(
            top: 25,
            left: -8,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.west),
              color: Colors.white,
              iconSize: 30.0,
            ),
          ),
          Positioned(
            top: 0,
            left: -38,
            child: Container(
              //color: Colors.black,
              width: 350, // กำหนดความกว้างของ Container
              height: 800, // กำหนดความสูงของ Container
              margin: const EdgeInsets.all(60.0),
              padding: const EdgeInsets.all(5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                  Text(
                    "Log In !",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 60,
                        color: Colors.white),
                  ),
                  SizedBox(height: 150),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundedInputField(
                        labelText: 'Email Address',
                        onChangend: (String value) {},
                      ),
                      RoundedPasswordField(
                        onChanged: (String value) {},
                      ),
                      Container(
                        //color: Colors.blue,
                        width: 266,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Forgot password ?"),
                          ],
                        ),
                      ),
                      SizedBox(height: 70),
                      RoundedButton(
                        text: "LOGIN",
                        press: () {},
                        width: 0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Sing UP"),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          /*Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFieldContainer(
                child: TextField(),
              ),
            ],
          ),*/
        ],
      ),
    );
  }
}





 //ทำถึงตรงนี้
