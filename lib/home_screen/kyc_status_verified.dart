import 'package:ahmad_practices/constant/app_color/app_color.dart';
import 'package:ahmad_practices/constant/app_style/app_style.dart';
import 'package:ahmad_practices/constant/image_path/image_path.dart';
import 'package:ahmad_practices/image_loader/image_loader.dart';
import 'package:ahmad_practices/widget/size_config.dart';
import 'package:flutter/material.dart';

class KycStatusVerified extends StatefulWidget {
  const KycStatusVerified({Key? key}) : super(key: key);

  @override
  State<KycStatusVerified> createState() => _KycStatusVerifiedState();
}

class _KycStatusVerifiedState extends State<KycStatusVerified> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 126 * SizeConfig.heightMultiplier!,
          ),
          Container(
            width: 328* SizeConfig.widthMultiplier!,
            height: 136* SizeConfig.heightMultiplier!,
            margin: EdgeInsets.only(
                left: 16 * SizeConfig.widthMultiplier!,
                right: 16 * SizeConfig.widthMultiplier!),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff233EC2),
                  Color(0xff051F9B)
                ],
              ),
              color: AppColor.blueContColor1F9B,
              borderRadius:
              BorderRadius.circular(20 * SizeConfig.widthMultiplier!),
              border: Border.all(
                color: AppColor.blueContColor3EC2,
              ),
            ),
            child: Row(
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ImageLoader.imageAsset(imagePath: ImagePath.usersIcon)
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [

                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
