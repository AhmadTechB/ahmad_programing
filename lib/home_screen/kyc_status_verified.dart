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
            margin: EdgeInsets.only(
                left: 16 * SizeConfig.widthMultiplier!,
                right: 16 * SizeConfig.widthMultiplier!),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.blueContColor3EC2,
                  AppColors.blueContColor1F9B,
                ],
              ),
              borderRadius:
                  BorderRadius.circular(20 * SizeConfig.widthMultiplier!),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: 24 * SizeConfig.heightMultiplier!,
                      left: 24 * SizeConfig.widthMultiplier!,
                    bottom: 28 * SizeConfig.heightMultiplier!,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ImageLoader.svgImageAsset(
                              imagePath: ImagePath.usersIcon),
                          SizedBox(
                            width: 9 * SizeConfig.widthMultiplier!,
                          ),
                          Text(
                            "M. Faizan",
                            style: AppTextStyle.text16BWhiteF9FFFFCW400,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20 * SizeConfig.heightMultiplier!,
                      ),
                      Row(
                        children: [
                          ImageLoader.svgImageAsset(
                              imagePath: ImagePath.calenderIcon),
                          SizedBox(
                            width: 9 * SizeConfig.widthMultiplier!,
                          ),
                          Text(
                            "2022/06/10",
                            style: AppTextStyle.text16BWhiteF9FFFFCW400,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20 * SizeConfig.heightMultiplier!,
                      ),
                      Row(
                        children: [
                          ImageLoader.svgImageAsset(
                              imagePath: ImagePath.locationIcon),
                          SizedBox(
                            width: 9 * SizeConfig.widthMultiplier!,
                          ),
                          Text(
                            "2210 E Hangman Valley Rd",
                            style: AppTextStyle.text16BWhiteF9FFFFCW400,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                      top: 20 * SizeConfig.heightMultiplier!,
                      right: 20 * SizeConfig.widthMultiplier!),
                  child: Transform.scale(
                    scale: 1.5,
                    child: ImageLoader.imageAsset(
                      height: 90 * SizeConfig.heightMultiplier!,
                      imagePath: ImagePath.truesIcon,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
