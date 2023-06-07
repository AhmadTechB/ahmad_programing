import 'package:ahmad_practices/buttons/blue_button.dart';
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
          Container(
            margin: EdgeInsets.only(
                left: 16 * SizeConfig.widthMultiplier!,
                right: 16 * SizeConfig.widthMultiplier!),
            decoration: BoxDecoration(
              color: AppColor.greyBackFAFB,
              borderRadius:
                  BorderRadius.circular(5 * SizeConfig.widthMultiplier!),
              border: Border.all(
                color: AppColor.greyBackFAFB,
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 17 * SizeConfig.widthMultiplier!,
                      top: 24 * SizeConfig.widthMultiplier!,
                      bottom: 26 * SizeConfig.widthMultiplier!),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Portfolio Balance",
                            style: AppTextStyle.textLiteGrey8096W400,
                          ),
                          SizedBox(width: 5 * SizeConfig.widthMultiplier!),
                          ImageLoader.svgImageAsset(
                              imagePath: ImagePath.eyeSlashIcon),
                        ],
                      ),
                      SizedBox(height: 3 * SizeConfig.heightMultiplier!),
                      Text(
                        "\$0.00",
                        style: AppTextStyle.text34DarkBlue1237W500,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                      top: 20 * SizeConfig.widthMultiplier!,
                      right: 26 * SizeConfig.widthMultiplier!,
                      bottom: 17 * SizeConfig.widthMultiplier!),
                  child: Column(
                    children: [
                      ImageLoader.svgImageAsset(
                          imagePath: ImagePath.starSheildIcon),
                      SizedBox(height: 3 * SizeConfig.heightMultiplier!),
                      Text(
                        "SIlver",
                        style: AppTextStyle.textLiteGrey8096W400,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 11 * SizeConfig.widthMultiplier!,
          ),
          Container(
            margin: EdgeInsets.only(
                left: 16 * SizeConfig.widthMultiplier!,
                right: 16 * SizeConfig.widthMultiplier!),
            decoration: BoxDecoration(
              color: AppColor.whiteBackFFFF,
              borderRadius:
                  BorderRadius.circular(5 * SizeConfig.widthMultiplier!),
              border: Border.all(
                color: AppColor.whiteBackE8F0,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                  top: 29 * SizeConfig.heightMultiplier!,
                  bottom: 20 * SizeConfig.heightMultiplier!),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Start generating interest on\n your assets",
                    style: AppTextStyle.text17Black313CW500,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 17 * SizeConfig.heightMultiplier!,
                  ),
                  BlueButton(),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25 * SizeConfig.heightMultiplier!,
          ),
          SizedBox(
            height: 143 * SizeConfig.heightMultiplier!,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  /// I have to remove this height and width.
                  width: 272 * SizeConfig.widthMultiplier!,
                  height: 143 * SizeConfig.heightMultiplier!,
                  margin: EdgeInsets.only(
                      left: 16 * SizeConfig.widthMultiplier!,
                      right: 16 * SizeConfig.widthMultiplier!),
                  decoration: BoxDecoration(
                    color: AppColor.greyBackF2F6,
                    borderRadius:
                        BorderRadius.circular(5 * SizeConfig.widthMultiplier!),
                    border: Border.all(
                      color: AppColor.greyBackF2F6,
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 25 * SizeConfig.widthMultiplier!,
                          left: 17 * SizeConfig.widthMultiplier!,
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Cashaa Mobile\nApp Launch",
                              style: AppTextStyle.text17Black313CW500,
                            ),
                            SizedBox(
                              height: 6 * SizeConfig.heightMultiplier!,
                            ),
                            Text(
                              "Introductory Offer",
                              style: AppTextStyle.textLiteGrey8096W400,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 7 * SizeConfig.heightMultiplier!,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Learn More",
                                  style: AppTextStyle.text15Blue33DBW500,
                                ),
                                SizedBox(
                                  width: 5 * SizeConfig.widthMultiplier!,
                                ),
                                ImageLoader.svgImageAsset(
                                    imagePath: ImagePath.rightGoIcon)
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 64 * SizeConfig.widthMultiplier!,
                      ),
                      ImageLoader.svgImageAsset(
                          imagePath: ImagePath.starSheildIcon)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 16 * SizeConfig.widthMultiplier!,
                      right: 16 * SizeConfig.widthMultiplier!),
                  decoration: BoxDecoration(
                    color: AppColor.greyBackF2F6,
                    borderRadius:
                        BorderRadius.circular(5 * SizeConfig.widthMultiplier!),
                    border: Border.all(
                      color: AppColor.greyBackF2F6,
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 25 * SizeConfig.widthMultiplier!,
                          left: 17 * SizeConfig.widthMultiplier!,
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Cashaa Mobile\nApp Launch",
                              style: AppTextStyle.text17Black313CW500,
                            ),
                            SizedBox(
                              height: 6 * SizeConfig.heightMultiplier!,
                            ),
                            Text(
                              "Introductory Offer",
                              style: AppTextStyle.textLiteGrey8096W400,
                            ),
                            SizedBox(
                              height: 7 * SizeConfig.heightMultiplier!,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Learn More",
                                  style: AppTextStyle.text15Blue33DBW500,
                                ),
                                SizedBox(
                                  width: 5 * SizeConfig.widthMultiplier!,
                                ),
                                ImageLoader.svgImageAsset(
                                    imagePath: ImagePath.rightGoIcon)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
      Row(
        children: [
          Text("Community",
          style: AppTextStyle.text20Black313CW500,
          ),
          SizedBox(
            width: 145 * SizeConfig.widthMultiplier!,
          ),
        ],
      ),
        ],
      ),
    );
  }
}
