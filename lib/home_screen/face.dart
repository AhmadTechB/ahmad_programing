import 'package:ahmad_practices/buttons/blue_button.dart';
import 'package:ahmad_practices/constant/app_style/app_style.dart';
import 'package:ahmad_practices/constant/image_path/image_path.dart';
import 'package:ahmad_practices/home_screen/face_enable_screen.dart';
import 'package:ahmad_practices/image_loader/image_loader.dart';
import 'package:ahmad_practices/widget/custom_accordiom.dart';
import 'package:ahmad_practices/widget/custom_sized_box.dart';
import 'package:ahmad_practices/widget/size_config.dart';
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
              style: AppTextStyle.text16LiteGrey8096W400,
            ),
            onTap: () {
              setState(() {
                clickedSecurityAccordion = !clickedSecurityAccordion;
              });
            },
            imagePath: ImagePath.accordionShield,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 16 * SizeConfig.widthMultiplier!,
                    right: 16 * SizeConfig.widthMultiplier!,                  ),
                  child: CommonButton(
                    wantMargin: false,
                    title: "Update Password",
                  ),
                )
              ],
            ),
          ),
          CustomSizedBox(
            height: 24,
          ),
          Padding(
            padding:  EdgeInsets.only(
              left: 16 * SizeConfig.widthMultiplier!,
              right: 16 * SizeConfig.widthMultiplier!,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Login usign biometric",
                style: AppTextStyle.text17DarkBlue1237W400,
                ),
                Spacer(),
                ImageLoader.svgImageAsset(
                  imagePath: ImagePath.toggleIcon
                ),
              ],
            ),
          ),
          CustomSizedBox(
            height: 24,
          ),
          CustomAccordion(
            wantExtractRow: clickedSecurityAccordion,
            title: "Pin",
            subTitleChild: Text(
              "Would you like to change or change pin",
              style: AppTextStyle.text16LiteGrey8096W400,
            ),
            onTap: () {
              setState(() {
                clickedSecurityAccordion = !clickedSecurityAccordion;
              });
            },
            imagePath: ImagePath.lockIcon,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 16 * SizeConfig.widthMultiplier!,
                    right: 16 * SizeConfig.widthMultiplier!,                  ),
                  child: CommonButton(
                    wantMargin: false,
                    title: "Create Pin",
                  ),
                )
              ],
            ),
          ),
          CustomSizedBox(
            height: 22,
          ),
        ],
      ),
    );
  }
}

