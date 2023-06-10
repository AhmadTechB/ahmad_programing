import 'package:ahmad_practices/constant/app_color/app_color.dart';
import 'package:ahmad_practices/constant/app_style/app_style.dart';
import 'package:ahmad_practices/image_loader/image_loader.dart';
import 'package:ahmad_practices/widget/size_config.dart';
import 'package:flutter/material.dart';



class CommonOutlineButton extends StatelessWidget {
  ///added gestureDetector so that we can make on tap if it is button or
  ///something like login or signup
  GestureTapCallback? onTap;

  /// added margin so that we can give default value either true or false
  /// because it take boolean data type
  bool wantMargin;

  /// added tittle so that we can take default value and this value
  /// is taking string type of value
  String? title;

  ///added borderRadius for the container to give radius from all side
  ///of the container and it can be in decimal value
  double? borderRadius;

  /// default height is 45 and its value can be in decimal so we taken
  /// double data type
  double? height;

  /// default width and its value can be in decimal so we taken
  /// double data type
  double? width;

  /// Container Color that look like Button default color is transparent
  Color? buttonColor;

  ///added imagePath so that we can add images and change according to need
  ///and imagePath is taking string type of value and this is
  /// from imagePath (class)
  String? imagePath;

  /// added borderColor so that we can change border color according to need
  /// and give this one default value and this is taking color
  /// from appColors (class)
  Color? borderColor;

  CommonOutlineButton(
      {Key? key,
        this.onTap,
        this.wantMargin = true,
        this.title,
        this.borderRadius,
        this.height,
        this.width,
        this.buttonColor,
        this.imagePath,
        this.borderColor})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: wantMargin
            ? EdgeInsets.only(
            left: 14 * SizeConfig.widthMultiplier!,
            right: 18 * SizeConfig.widthMultiplier!)
            : EdgeInsets.zero,
        width: width ?? 394 * SizeConfig.widthMultiplier!,
        height: height ?? 59 * SizeConfig.heightMultiplier!,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
              borderRadius ?? 5 * SizeConfig.widthMultiplier!),
          color: buttonColor ?? Colors.transparent,
          border: Border.all(color: borderColor ?? AppColor.blue50DB, width: 0.95),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageLoader.svgImageAsset(
              imagePath: imagePath,
              width: 24 * SizeConfig.widthMultiplier!,
              height: 24 * SizeConfig.heightMultiplier!,
            ),
            SizedBox(
              width: 9 * SizeConfig.widthMultiplier!,
            ),
            Text(
              title ?? "",
              style: AppTextStyle.text18Blue33DBW500,
            ),
          ],
        ),
      ),
    );
  }
}