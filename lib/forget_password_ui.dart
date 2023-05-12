import 'dart:math';

import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  double _width = 55;
  double _height = 55;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: AnimatedContainer(
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _borderRadius,
              ),
              duration: Duration(seconds: 1),
              curve: Curves.bounceIn,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: FloatingActionButton(
              child: Icon(Icons.play_arrow),
              onPressed: () {
                setState(() {
                  final random = Random();

                  // random dimension generator
                  _width = random.nextInt(300).toDouble();
                  _height = random.nextInt(300).toDouble();

                  // random color generator
                  _color = Color.fromRGBO(
                    random.nextInt(256),
                    random.nextInt(256),
                    random.nextInt(256),
                    1,
                  );
                  _borderRadius =
                      BorderRadius.circular(random.nextInt(100).toDouble());
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
