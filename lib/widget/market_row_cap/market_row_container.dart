import 'package:ahmad_practices/constant/app_color/app_color.dart';
import 'package:ahmad_practices/constant/app_style/app_style.dart';
import 'package:ahmad_practices/image_loader/image_loader.dart';
import 'package:ahmad_practices/widget/size_config.dart';
import 'package:flutter/material.dart';



class MarketCapRow extends StatelessWidget {
  String? title;
  String? subTitle;
  String? prefixIcon;
  bool wantPrefixIcon;
  bool wantTextColor;

  MarketCapRow({Key? key,
    this.title,
    this.subTitle,
    this.prefixIcon,
    this.wantPrefixIcon = false,
    this.wantTextColor = false,

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 17 * SizeConfig.widthMultiplier!,
          right: 27 * SizeConfig.widthMultiplier!
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title?? "",
            style: AppTextStyle.text18LiteGrey8096W400,
          ),
          const Spacer(),
          wantPrefixIcon == true ? ImageLoader.svgImageAsset(
              width: 13 * SizeConfig.widthMultiplier!,
              height: 13 * SizeConfig.heightMultiplier!,
              imagePath: prefixIcon) : const SizedBox.shrink(),
          Text(
            subTitle?? "",
            style: AppTextStyle.texts16LiteGrey8096W400.copyWith(color: wantTextColor ==
                true
                ? AppColors.red534A
                : AppColors.grey718096,),
          ),
        ],
      ),
    );
  }
}




