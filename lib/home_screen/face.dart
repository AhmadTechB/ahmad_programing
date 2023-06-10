import 'package:ahmad_practices/buttons/blue_button.dart';
import 'package:ahmad_practices/constant/image_path/image_path.dart';
import 'package:ahmad_practices/home_screen/face_enable_screen.dart';
import 'package:ahmad_practices/image_loader/image_loader.dart';
import 'package:ahmad_practices/widget/custom_accordiom.dart';
import 'package:ahmad_practices/widget/custom_sized_box.dart';
import 'package:flutter/material.dart';

class Face extends StatefulWidget {
  const Face({Key? key}) : super(key: key);

  @override
  State<Face> createState() => _FaceState();
}

class _FaceState extends State<Face> {


  bool clickedSecurityAccordion = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Security Settings
          CustomAccordion(
            wantExtractRow: clickedSecurityAccordion,
            title: "Security Settings",
            subTitleChild: Text(
              "mailto:saddam_002@mailinator.com",
            ),
            onTap: () {
              setState(() {
                clickedSecurityAccordion = !clickedSecurityAccordion;
              });
            },
            imagePath: ImagePath.accordionShield,
            child: Column(
              children: [
                CommonButton(
                  wantMargin: false,
                  title: "Update Password",
                )
              ],
            ),
          ),
          CustomSizedBox(
            height: 24,
          ),
        ],
      ),
    )
    ;
  }
}

