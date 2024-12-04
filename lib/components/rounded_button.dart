import 'package:flutter/material.dart';
import 'package:project_test/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function? press;
  final Color color, textColor;
  const RoundedButton({
    super.key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
    required int width,
  }); //: super(key:key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        width: size.width * 0.6,
        child: Container(
          /*decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(100, 140, 28, 218),
                Color.fromARGB(100, 60, 26, 128)
              ], // สีที่ต้องการไล่เฉด
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(29),
          ),*/
          child: ElevatedButton(
            onPressed: press as void Function()?,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              backgroundColor: color,
              //shadowColor: Colors.transparent,
              side: BorderSide(
                color: Color.fromARGB(100, 140, 28, 218), // สีของขอบ
                width: 2.5, // ความหนาของขอบ
              ),
            ),
            child: Text(
              text,
              style: TextStyle(color: textColor, fontSize: 17),
            ),
          ),
        ));
  }
}
