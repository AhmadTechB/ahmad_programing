import 'package:flutter/material.dart';

class CommonButton extends StatefulWidget {
  double? height;

  CommonButton({
    Key? key,
    this.height,
  }) : super(key: key);

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  int a=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CustomButton $a"),
        backgroundColor: Colors.purple,
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("IncreasesButton"),
        onPressed: (){
          _increament();
        },
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: 25, right: 25),
          height: widget.height ?? 70,
          width: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7), color: Colors.red),
          child: Center(
            child: GestureDetector(
              onTap: (){
                _decreament();
              },
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
      ),
    );
  }

  void _increament(){
    setState(() {
      a++;
    });
  }
  void _decreament(){
    setState(() {
      a--;
    });
  }
}
