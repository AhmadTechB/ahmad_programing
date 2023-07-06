import 'package:ahmad_practices/constant/app_color/app_color.dart';
import 'package:ahmad_practices/constant/app_style/app_style.dart';
import 'package:ahmad_practices/constant/image_path/image_path.dart';
import 'package:ahmad_practices/image_loader/image_loader.dart';
import 'package:ahmad_practices/widget/size_config.dart';
import 'package:flutter/material.dart';

class CustomContainerDivider extends StatelessWidget {
  final String? prefixIconPath;
  final String? title;

  const CustomContainerDivider({
    this.prefixIconPath,
    this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 16.0 * SizeConfig.widthMultiplier!,
          right: 16.0 * SizeConfig.widthMultiplier!),
      child: Row(
        children: [
          SizedBox(width: 44 * SizeConfig.widthMultiplier!, child: Divider()),
          Container(
            width: 240 * SizeConfig.widthMultiplier!,
            height: 32 * SizeConfig.heightMultiplier!,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(500 * SizeConfig.widthMultiplier!),
              border: Border.all(
                color: AppColors.greyD5E0,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: 28 * SizeConfig.widthMultiplier!,
                right: 28 * SizeConfig.widthMultiplier!,
              ),
              child: Row(
                children: [
                  ImageLoader.svgImageAsset(
                      imagePath: ImagePath.greyZigzagIcon),
                  SizedBox(
                    width: 5 * SizeConfig.widthMultiplier!,
                  ),
                  Text(
                    "1 EURO = 7402.00 CAS",
                    style: AppTextStyle.text16DarkBlue1237W400,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
