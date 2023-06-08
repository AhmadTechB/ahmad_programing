// ignore_for_file: must_be_immutable



import 'package:flutter/material.dart';

import '../constant/app_color/app_color.dart';
import '../constant/app_style/app_style.dart';
import '../constant/image_path/image_path.dart';
import '../image_loader/image_loader.dart';
import '../widget/size_config.dart';

class CommonButton extends StatelessWidget {
  ///added gestureDetector so that we can make on tap call if it is button or
  ///something like login or signup
  GestureTapCallback? onTap;

  /// added margin so that we can give default value either true or false
  /// because it take boolean data type
  /// default margin is left 69 and right 68
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

  /// added buttonColor so that we can change  buttonColor according to need
  /// and give this one default value and this is taking color
  /// from appColors (class)
  Color? buttonColor;



  /// added margin so that we can give default value either true or false
  /// because it take boolean data type
  bool wantBlueTextColor;

  ///added imagePath so that we can add images and change according to need
  ///and imagePath is taking string type of value and this is
  /// from imagePath (class)
  String? imagePath;

  /// this is used to give loading animation to button
  bool isLoading;

  /// this variable take true or false
  /// to enable and desable button
  bool buttonIsEnabled;

  /// this is used to give loading button color on time of loading
  final Color? loadingButtonColor;

  ///if want to disable tap when buttonIsEnabled == false make this true
  bool? disableTap;

  CommonButton({
    Key? key,
    this.buttonIsEnabled = true,
    this.onTap,
    this.wantMargin = true,
    this.wantBlueTextColor = false,
    this.title,
    this.borderRadius,
    this.height,
    this.width,
    this.buttonColor,
    this.imagePath,
    this.isLoading = false,
    this.loadingButtonColor,
    this.disableTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (buttonIsEnabled == false && disableTap == true) ? null : onTap,
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
          color: (buttonIsEnabled == false)
              ? AppColor.blue50DB
              : (loadingButtonColor != null && isLoading == true
              ? loadingButtonColor
              : (buttonColor ?? AppColor.blue50DB)),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isLoading == false && buttonIsEnabled == false)
              ImageLoader.svgImageAsset(
                imagePath: ImagePath.arrowDownLeftIcon,
                 color: AppColor.grey8096,
              ),
            if (buttonIsEnabled == true && isLoading == false)
              ImageLoader.svgImageAsset(
                imagePath: imagePath,
                width: 24 * SizeConfig.widthMultiplier!,
                height: 24 * SizeConfig.heightMultiplier!,
              ),
            SizedBox(
              width: 9 * SizeConfig.widthMultiplier!,
            ),
            (isLoading == true)
                ? ImageLoader.assetLottie(
              imagePath: ImagePath.loadingAnimation,
              width: 80 * SizeConfig.widthMultiplier!,
            )
                : (buttonIsEnabled == false)
                ? Text(title ?? "", style: AppTextStyle.text18BWhiteF9FFFFCW700)
                : Text(
              title ?? "",
              style: wantBlueTextColor
                  ? AppTextStyle.text15Blue33DBW500
                  : AppTextStyle.text18BWhiteF9FFFFCW700,
            ),
          ],
        ),
      ),
    );
  }
}
