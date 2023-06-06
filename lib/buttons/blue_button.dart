import 'package:ahmad_practices/constant/app_color/app_color.dart';
import 'package:ahmad_practices/widget/size_config.dart';
import 'package:flutter/material.dart';

import '../constant/image_path/image_path.dart';

class BlueButton extends StatelessWidget {
  GestureTapCallback? onTap;
  bool wantMargin;
  String? title;
  double? borderRadius;
  double? height;
  final double? fontSize;
  final double? width;
  Color? buttonColor;
  final Color? loadingButtonColor;
  bool isLoading;

  bool buttonIsEnabled;

  BlueButton(
      {Key? key,
      this.buttonIsEnabled = true,
      this.isLoading = false,
      this.loadingButtonColor,
      this.onTap,
      this.wantMargin = true,
      this.title,
      this.borderRadius,
      this.height,
      this.fontSize,
      this.width,
      this.buttonColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: wantMargin
            ? EdgeInsets.only(
                left: 21 * SizeConfig.widthMultiplier!,
                right: 24 * SizeConfig.widthMultiplier!)
            : EdgeInsets.zero,
        width: width ?? 294 * SizeConfig.widthMultiplier!,
        height: height ?? 59 * SizeConfig.heightMultiplier!,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 4),
                blurRadius: 10,
                color: const Color(0xff000000).withOpacity(0.2)),
          ],
          borderRadius: BorderRadius.circular(
              borderRadius ?? (8 * SizeConfig.widthMultiplier!)),
          color: !buttonIsEnabled
              ? const Color(0xff9FDFFF)
              : (loadingButtonColor != null && isLoading == true
                  ? loadingButtonColor
                  : buttonColor ?? const Color(0xff3D6DFE)),
        ),
        child: Center(
            child: isLoading
                ? Image.asset(
                    ImagePath.loaderIcon,
                    width: 80 * SizeConfig.widthMultiplier!,
                  )
                : Text(
                    title != null ? title ?? '' : "Fund your account",
                    style: TextStyle(
                        color: !buttonIsEnabled
                            ? const Color(0xff9F9F9F)
                            : AppColor.kWhite,
                        fontWeight: FontWeight.w700,
                        fontSize:
                            SizeConfig.textMultiplier! * (fontSize ?? 18.0)),
                  )),
      ),
    );
  }
}
