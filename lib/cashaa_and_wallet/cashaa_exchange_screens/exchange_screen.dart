import 'package:ahmad_practices/buttons/blue_button.dart';
import 'package:ahmad_practices/constant/app_color/app_color.dart';
import 'package:ahmad_practices/constant/app_style/app_style.dart';
import 'package:ahmad_practices/constant/image_path/image_path.dart';
import 'package:ahmad_practices/home_screen/bottomsheet.dart';
import 'package:ahmad_practices/image_loader/image_loader.dart';
import 'package:ahmad_practices/widget/size_config.dart';
import 'package:flutter/material.dart';

class ExchangeScreen extends StatefulWidget {
  const ExchangeScreen({super.key});

  @override
  State<ExchangeScreen> createState() => _ExchangeScreenState();
}

class _ExchangeScreenState extends State<ExchangeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15 * SizeConfig.heightMultiplier!,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 113 * SizeConfig.widthMultiplier!,
            ),
            child:
                ImageLoader.svgImageAsset(imagePath: ImagePath.cashaaLogoIcon),
          ),
          SizedBox(
            height: 57 * SizeConfig.heightMultiplier!,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16 * SizeConfig.widthMultiplier!,
            ),
            child: Text(
              "You will exchange",
              style: AppTextStyle.text18DarkBlue1237W700,
            ),
          ),
          SizedBox(
            height: 12 * SizeConfig.heightMultiplier!,
          ),
          Container(
            margin: EdgeInsets.only(
                left: 16 * SizeConfig.widthMultiplier!,
                right: 16 * SizeConfig.widthMultiplier!),
            width: 328 * SizeConfig.widthMultiplier!,
            height: 78 * SizeConfig.heightMultiplier!,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(5 * SizeConfig.widthMultiplier!),
              border: Border.all(
                color: AppColor.blue50DB,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: 12 * SizeConfig.widthMultiplier!),
                  child: Row(
                    children: [
                      ImageLoader.svgImageAsset(imagePath: ImagePath.cashIcon),
                      SizedBox(
                        width: 5 * SizeConfig.widthMultiplier!,
                      ),
                      Text(
                        "EURO",
                        style: AppTextStyle.text22DarkBlue1237W700,
                      ),
                      ImageLoader.svgImageAsset(
                          imagePath: ImagePath.arrowDownIcon)
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding:
                      EdgeInsets.only(right: 10 * SizeConfig.widthMultiplier!),
                  child: Text(
                    "24,524.0000|",
                    style: AppTextStyle.text28DarkBlue1237W400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 14 * SizeConfig.heightMultiplier!,
          ),
          Center(
            child: RichText(
              text: TextSpan(
                text: 'You Have ',
                style: AppTextStyle.text18LiteGrey8096W400,
                children: <TextSpan>[
                  TextSpan(
                      text: '14,056.7491 ',
                      style: AppTextStyle.text18Blue33DBW400,
                ),  TextSpan(
                      text: ' EUR in your wallet.',
                      style: AppTextStyle.text18LiteGrey8096W400,
                ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 57 * SizeConfig.heightMultiplier!,
          ),
      Center(
        child: Container(
          margin: EdgeInsets.only(
              left: 16 * SizeConfig.widthMultiplier!,
              right: 16 * SizeConfig.widthMultiplier!),
          width: 240 * SizeConfig.widthMultiplier!,
          height: 32 * SizeConfig.heightMultiplier!,
          decoration: BoxDecoration(
            borderRadius:
            BorderRadius.circular(500 * SizeConfig.widthMultiplier!),
            border: Border.all(
              color: AppColor.greyD5E0,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 28 * SizeConfig.widthMultiplier!,
            right: 28 * SizeConfig.widthMultiplier!,
            ),
            child: Row(
              children: [
                ImageLoader.svgImageAsset(
                  imagePath: ImagePath.greyZigzagIcon
                ),
                SizedBox(
                  width: 5 * SizeConfig.widthMultiplier!,
                ),
                Text("1 EURO = 7402.00 CAS",
                style: AppTextStyle.text16DarkBlue1237W400,
                ),
              ],
            ),
          ),
        ),
      ),
          SizedBox(
            height: 50 * SizeConfig.heightMultiplier!,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16 * SizeConfig.widthMultiplier!,
            ),
            child: Text(
              "You will exchange",
              style: AppTextStyle.text18DarkBlue1237W700,
            ),
          ),
          SizedBox(
            height: 12 * SizeConfig.heightMultiplier!,
          ),
          Container(
            margin: EdgeInsets.only(
                left: 16 * SizeConfig.widthMultiplier!,
                right: 16 * SizeConfig.widthMultiplier!),
            width: 328 * SizeConfig.widthMultiplier!,
            height: 78 * SizeConfig.heightMultiplier!,
            decoration: BoxDecoration(
              borderRadius:
              BorderRadius.circular(5 * SizeConfig.widthMultiplier!),
              border: Border.all(
                color: AppColor.blue50DB,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                  EdgeInsets.only(left: 12 * SizeConfig.widthMultiplier!),
                  child: Row(
                    children: [
                      ImageLoader.svgImageAsset(imagePath: ImagePath.cashIcon),
                      SizedBox(
                        width: 5 * SizeConfig.widthMultiplier!,
                      ),
                      Text(
                        "CAS",
                        style: AppTextStyle.text22DarkBlue1237W700,
                      ),
                      ImageLoader.svgImageAsset(
                          imagePath: ImagePath.arrowDownIcon)
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding:
                  EdgeInsets.only(right: 10 * SizeConfig.widthMultiplier!),
                  child: Text(
                    "24,524.0000|",
                    style: AppTextStyle.text28DarkBlue1237W400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 57 * SizeConfig.heightMultiplier!,
          ),
          CommonButton(
            title: "Get Quote",
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BottomSheetPage()),
              );
            },
          )
        ],
      ),
    );
  }
}
