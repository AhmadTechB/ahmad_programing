import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  double? height;

  CommonButton({
    Key? key,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CustomButton"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: 25, right: 25),
          height: height ?? 70,
          width: 400,
          decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(7), color: Colors.red),
          child: Center(
            child: Text(
              "Clicked",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w900),
            ),
          ),
        ),
      ),
    );
  }
}
