import 'package:ahmad_practices/constant/app_style/app_style.dart';
import 'package:ahmad_practices/constant/image_path/image_path.dart';
import 'package:ahmad_practices/image_loader/image_loader.dart';
import 'package:ahmad_practices/widget/size_config.dart';
import 'package:flutter/material.dart';

import '../constant/app_color/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 150 * SizeConfig.heightMultiplier!,
          ),
          // Padding(
          //   padding: EdgeInsets.only(
          //       left: 16 * SizeConfig.widthMultiplier!,
          //       right: 16 * SizeConfig.widthMultiplier!),
          //   child: Container(
          //     width: 328 * SizeConfig.widthMultiplier!,
          //     height: 116 * SizeConfig.heightMultiplier!,
          //     decoration: BoxDecoration(
          //       borderRadius:
          //           BorderRadius.circular(5 * SizeConfig.widthMultiplier!),
          //       border: Border.all(
          //         width: 3 * SizeConfig.widthMultiplier!,
          //         color: AppColor.greyBackFAFB,
          //       ),
          //     ),
          //     child: Padding(
          //       padding: EdgeInsets.only(
          //           left: 17 * SizeConfig.widthMultiplier!,
          //           top: 24 * SizeConfig.widthMultiplier!),
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.start,
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text("Portfolio Balance",
          //                   style: AppTextStyle.textLiteGrey8096W400),
          //               SizedBox(width: 5 * SizeConfig.widthMultiplier!),
          //               ImageLoader.svgImageAsset(
          //                   imagePath: ImagePath.eyeSlashIcon),
          //               SizedBox(width: 90 * SizeConfig.widthMultiplier!),
          //               ImageLoader.svgImageAsset(
          //                   imagePath: ImagePath.starSheildIcon),
          //             ],
          //           ),
          //           Text("\$0.00",
          //             style: AppTextStyle.text34DarkBlue1237W700,
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),

          Padding(
            padding: EdgeInsets.only(
                left: 16 * SizeConfig.widthMultiplier!,
                right: 16 * SizeConfig.widthMultiplier!),
            child: Container(
              width: 328 * SizeConfig.widthMultiplier!,
              height: 116 * SizeConfig.heightMultiplier!,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(5 * SizeConfig.widthMultiplier!),
                border: Border.all(
                  width: 3 * SizeConfig.widthMultiplier!,
                  color: AppColor.greyBackFAFB,
                ),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("Portfolio Balance",
                              style: AppTextStyle.textLiteGrey8096W400),
                          SizedBox(width: 5 * SizeConfig.widthMultiplier!),
                          ImageLoader.svgImageAsset(
                              imagePath: ImagePath.eyeSlashIcon),
                        ],
                      ),
                      Text("\$0.00", style: AppTextStyle.textLiteGrey8096W400),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      ImageLoader.svgImageAsset(
                          imagePath: ImagePath.starSheildIcon),
                      Text("Silver", style: AppTextStyle.textLiteGrey8096W400),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
