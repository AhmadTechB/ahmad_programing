import 'package:ahmad_practices/buttons/blue_button.dart';
import 'package:ahmad_practices/constant/app_color/app_color.dart';
import 'package:ahmad_practices/constant/app_style/app_style.dart';
import 'package:ahmad_practices/constant/image_path/image_path.dart';
import 'package:ahmad_practices/image_loader/image_loader.dart';
import 'package:ahmad_practices/widget/custom_sized_box.dart';
import 'package:ahmad_practices/widget/market_row_cap/market_row_container.dart';
import 'package:ahmad_practices/widget/size_config.dart';
import 'package:flutter/material.dart';

class DepositScreen extends StatefulWidget {
  const DepositScreen({super.key});

  @override
  State<DepositScreen> createState() => _DepositScreenState();
}

class _DepositScreenState extends State<DepositScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSizedBox(
            height: 55
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 114 * SizeConfig.widthMultiplier!,
              right: 113 * SizeConfig.widthMultiplier!,
            ),
            child: ImageLoader.svgImageAsset(
                imagePath: ImagePath.cashaaLogoIcon),
          ),
          CustomSizedBox(
              height: 37
          ),
             Center(
               child: Text(
                "How much do you \nwant to deposit?",
                style: AppTextStyle.text18DarkBlue1237W700,
            ),
             ),
          CustomSizedBox(
              height: 12
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
                color: AppColors.blue50DB,
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
                      ImageLoader.svgImageAsset(
                          imagePath: ImagePath.cashIcon),
                      CustomSizedBox(
                          width: 5
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
                  padding: EdgeInsets.only(
                      right: 10 * SizeConfig.widthMultiplier!),
                  child: Text(
                    "24,524.0000|",
                    style: AppTextStyle.text28DarkBlue1237W400,
                  ),
                ),
              ],
            ),
          ),
          CustomSizedBox(
              height: 17
          ),
          MarketCapRow(
            title: "Amount you will need to deposit",
            subTitle: "£0.00",
          ),
          CustomSizedBox(
              height: 37
          ),
          CommonButton(
            title: "Continue",
          ),
        ],
      ),
    );
  }
}
