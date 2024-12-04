import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -150, // ระยะห่างจากด้านบน
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 59, 59, 59)
                      .withOpacity(0.5), // สีของเงา
                  blurRadius: 30, // ความเบลอของเงา
                  spreadRadius: 10, // ขยายเงา
                  offset: Offset(0, 5), // ตำแหน่งของเงา (x, y)
                ),
              ], borderRadius: BorderRadius.circular(500)),
              child: Image.asset(
                "assets/images/13.png",
                width: size.width * 1.2,
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
