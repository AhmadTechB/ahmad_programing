import 'package:ahmad_practices/constant/app_color/app_color.dart';
import 'package:ahmad_practices/constant/app_style/app_style.dart';
import 'package:ahmad_practices/constant/image_path/image_path.dart';
import 'package:ahmad_practices/image_loader/image_loader.dart';
import 'package:ahmad_practices/widget/custom_container.dart';
import 'package:ahmad_practices/widget/custom_container_with_bottom_border.dart';
import 'package:ahmad_practices/widget/custom_sized_box.dart';
import 'package:ahmad_practices/widget/size_config.dart';
import 'package:flutter/material.dart';

class DepositAndBtcScreen extends StatefulWidget {
  const DepositAndBtcScreen({Key? key}) : super(key: key);

  @override
  State<DepositAndBtcScreen> createState() => _DepositAndBtcScreenState();
}

class _DepositAndBtcScreenState extends State<DepositAndBtcScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: 16 * SizeConfig.widthMultiplier!),
                  child:
                      ImageLoader.svgImageAsset(imagePath: ImagePath.backIcon),
                ),
                CustomSizedBox(
                  width: 59,
                ),
                Text(
                  "Deposit BTC",
                  style: AppTextStyle.text22DarkBlue1237W700,
                ),
              ],
            ),
            CustomSizedBox(
              height: 35,
            ),
            Padding(
              padding: EdgeInsets.only(right: 18 * SizeConfig.widthMultiplier!),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ImageLoader.svgImageAsset(
                      imagePath: ImagePath.greyZigzagIcon),
                  CustomSizedBox(
                    width: 5,
                  ),
                  Text(
                    "History",
                    style: AppTextStyle.text17LiteGrey8096W400,
                  ),
                ],
              ),
            ),
            CustomSizedBox(
              height: 3,
            ),
            Container(
              width: 211 * SizeConfig.widthMultiplier!,
              height: 203 * SizeConfig.heightMultiplier!,
            ),
            CustomSizedBox(
              height: 22,
            ),
            ColorCardContainer(
              wantMargin: true,
              color: AppColors.blue3350DB,
              child: Container(
                padding: EdgeInsets.only(
                    top: 16 * SizeConfig.heightMultiplier!,
                    bottom: 16 * SizeConfig.heightMultiplier!),
                decoration: const BoxDecoration(color: AppColors.whiteF7F8FD),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 12 * SizeConfig.widthMultiplier!),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ImageLoader.svgImageAsset(
                          imagePath: ImagePath.infoCircleIcon),
                      SizedBox(
                        width: 6 * SizeConfig.widthMultiplier!,
                      ),
                      Text(
                        "Use the address below to receive\nCashaa (CAS) from an external wallet.",
                        style: AppTextStyle.text17blue3350DBW400,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            CustomSizedBox(
              height: 11,
            ),
            CustomContainer(
              wantIconTopPadding: true,
              wantIcon: true,
              title: "Network Type",
              subTitle: "Bitcoin",
              imagePath: ImagePath.networkTypeIcon,
            ),
            CustomSizedBox(
              height: 9,
            ),
            CustomContainer(
              wantFontSize: true,
              wantIcon: true,
              title: "Deposit Address",
              subTitle: "sasbjknv45dsfvds45f4ds56sasbjknv45dsfvds45f4",
              imagePath: ImagePath.moreHorizontalIcon,
            ),
            CustomSizedBox(
              height: 8,
            ),
            CustomContainer(
              title: "CAS Memo",
              subTitle: "124534622585",
            ),
            CustomSizedBox(
              height: 8,
            ),
            CustomContainer(
              title: "Contract Information",
              subTitle: "****S-167",
            ),
            CustomSizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
