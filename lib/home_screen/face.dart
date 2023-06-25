import 'package:ahmad_practices/buttons/blue_button.dart';
import 'package:ahmad_practices/constant/app_color/app_color.dart';
import 'package:ahmad_practices/constant/app_style/app_style.dart';
import 'package:ahmad_practices/constant/image_path/image_path.dart';
import 'package:ahmad_practices/image_loader/image_loader.dart';
import 'package:ahmad_practices/widget/custom_accordiom.dart';
import 'package:ahmad_practices/widget/custom_sized_box.dart';
import 'package:ahmad_practices/widget/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'face_enable_screen.dart';

class Face extends StatefulWidget {
  const Face({Key? key}) : super(key: key);

  @override
  State<Face> createState() => _FaceState();
}

class _FaceState extends State<Face> {
  bool clickedSecurityAccordion = false;
  bool clickedSecurityAccordions = false;
  bool clickedSecureAccordions = false;

  bool swtich = false;

  @override
  Widget build(BuildContext context) {
    return EnableFaceTouchId(
      imagePath: ImagePath.fingerEnableIcon,
    );

    // return Scaffold(
    //   body: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       // Security Settings
    //       CustomAccordion(
    //         wantExtractRow: clickedSecurityAccordion,
    //         title: "Security Settings",
    //         subTitleChild: Text(
    //           "mailto:saddam_002@mailinator.com",
    //           style: AppTextStyle.text16LiteGrey8096W400,
    //         ),
    //         onTap: () {
    //           setState(() {
    //             clickedSecurityAccordion = !clickedSecurityAccordion;
    //           });
    //         },
    //         imagePath: ImagePath.accordionShield,
    //         child: Column(
    //           children: [
    //             Padding(
    //               padding: EdgeInsets.only(
    //                 left: 16 * SizeConfig.widthMultiplier!,
    //                 right: 16 * SizeConfig.widthMultiplier!,
    //               ),
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.start,
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Text(
    //                     "Login usign biometric",
    //                     style: AppTextStyle.text17DarkBlue1237W400,
    //                   ),
    //                   Spacer(),
    //                   GestureDetector(
    //                     onTap: () {
    //                       setState(() {
    //                         swtich = !swtich;
    //                       });
    //                     },
    //                     child: CupertinoSwitch(
    //                         value: swtich,
    //                         onChanged: (v) {
    //                           setState(() {});
    //                           swtich = v;
    //                         }),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //
    //             CustomSizedBox(
    //               height: 24,
    //             ),
    //             Text("ddd"),
    //             CommonButton(
    //               buttonColor: AppColor.redF4534A,
    //               title: "Delete My Account",
    //             ),
    //           ],
    //         ),
    //       ),
    //       CustomSizedBox(
    //         height: 24,
    //       ),
    //     ],
    //   ),
    // );
  }
}
