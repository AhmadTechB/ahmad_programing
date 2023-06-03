import 'dart:ui';

import 'package:flutter/material.dart';

import '../app_color/app_color.dart';

class AppTextStyle {
  static TextStyle text34DarkBlue1237W700 = TextStyle(
    color: AppColor.darkBlue1237,
    fontWeight: FontWeight.w700,
    fontSize: 34 * SizeConfig.textMultiplier!,
    // fontFamily: 'Circular',
  );

  // static TextStyle text20WhiteFFFW400 = TextStyle(
  //   color: AppColors.whiteFF,
  //   fontWeight: FontWeight.w400,
  //   fontSize: 20 * SizeConfig.textMultiplier!,
  //   fontFamily: 'Circular',
  // );
  //
  // static TextStyle? text18blue1E4DW700 = TextStyle(
  //   color: AppColors.blue1E4D,
  //   fontWeight: FontWeight.w700,
  //   fontSize: 18 * SizeConfig.textMultiplier!,
  //   fontFamily: 'Circular',
  // );
  //
  // static TextStyle? text18blue3350DBW700 = TextStyle(
  //   color: AppColors.blue3350DB,
  //   fontWeight: FontWeight.w700,
  //   fontSize: 18 * SizeConfig.textMultiplier!,
  //   fontFamily: 'Circular',
  // );
  // static TextStyle? text17blue3350DBW400 = TextStyle(
  //     color: AppColors.blue3350DB,
  //     fontWeight: FontWeight.w400,
  //     fontSize: 17 * SizeConfig.textMultiplier!,
  //     fontFamily: 'Circular',
  //     decoration: TextDecoration.underline);
  //
  // static TextStyle? text30blue3350DBW700 = TextStyle(
  //   color: AppColors.blue3350DB,
  //   fontWeight: FontWeight.w700,
  //   fontSize: 30 * SizeConfig.textMultiplier!,
  //   fontFamily: 'Circular',
  // );
  //
  // static TextStyle text18WhiteFFW700 = TextStyle(
  //   color: AppColors.whiteFF,
  //   fontWeight: FontWeight.w700,
  //   fontSize: 18 * SizeConfig.textMultiplier!,
  // );
  // static TextStyle? text15blue3350DBW400 = TextStyle(
  //   color: AppColors.blue3350DB,
  //   fontWeight: FontWeight.w400,
  //   fontSize: 15 * SizeConfig.textMultiplier!,
  //   fontFamily: 'Circular',
  // );
  //
  // static TextStyle? text15blue3350DBW400WithUnderLine = TextStyle(
  //     color: AppColors.blue3350DB,
  //     fontWeight: FontWeight.w400,
  //     fontSize: 15 * SizeConfig.textMultiplier!,
  //     fontFamily: 'Circular',
  //     decoration: TextDecoration.underline);
  // static TextStyle? text15blue3350DBW700WithUnderLine = TextStyle(
  //     color: AppColors.blue3350DB,
  //     fontWeight: FontWeight.w700,
  //     fontSize: 15 * SizeConfig.textMultiplier!,
  //     fontFamily: 'Circular',
  //     decoration: TextDecoration.underline);
  //
  // static TextStyle text34Black38W700 = TextStyle(
  //   color: AppColors.black2B38,
  //   fontWeight: FontWeight.w700,
  //   fontSize: 34 * SizeConfig.textMultiplier!,
  // );
  //
  // static TextStyle text20DarkBlue1237W400 = TextStyle(
  //   color: AppColors.darkBlue1237,
  //   fontWeight: FontWeight.w400,
  //   fontSize: 20 * SizeConfig.textMultiplier!,
  //   fontFamily: 'Circular',
  // );
  //
  // static TextStyle text22DarkBlue1237W700 = TextStyle(
  //   color: AppColors.darkBlue1237,
  //   fontWeight: FontWeight.w700,
  //   fontSize: 22 * SizeConfig.textMultiplier!,
  //   fontFamily: 'Circular',
  // );
  //
  // static TextStyle text30DarkBlue1237W700 = TextStyle(
  //   color: AppColors.darkBlue1237,
  //   fontWeight: FontWeight.w700,
  //   fontSize: 30 * SizeConfig.textMultiplier!,
  //   fontFamily: 'Circular',
  // );
  //
  // static TextStyle text20Grey8096W400 = TextStyle(
  //   color: AppColors.grey718096,
  //   fontWeight: FontWeight.w400,
  //   fontSize: 20 * SizeConfig.textMultiplier!,
  //   fontFamily: 'Circular',
  // );
  //
  // static TextStyle text17Grey8096W400 = TextStyle(
  //   color: AppColors.grey718096,
  //   fontWeight: FontWeight.w400,
  //   fontSize: 17 * SizeConfig.textMultiplier!,
  //   fontFamily: 'Circular',
  // );
  //
  // static TextStyle text15Grey8096W400 = TextStyle(
  //   color: AppColors.grey718096,
  //   fontWeight: FontWeight.w400,
  //   fontSize: 15 * SizeConfig.textMultiplier!,
  //   fontFamily: 'Circular',
  // );
  //
  // static TextStyle text34blue0612W700 = TextStyle(
  //   color: AppColors.darkBlue1237,
  //   fontWeight: FontWeight.w700,
  //   fontSize: 34 * SizeConfig.textMultiplier!,
  //   fontFamily: 'Circular',
  // );
  //
  // static TextStyle text20blue0612W400 = TextStyle(
  //   color: AppColors.darkBlue1237,
  //   fontWeight: FontWeight.w400,
  //   fontSize: 20 * SizeConfig.textMultiplier!,
  //   fontFamily: 'Circular',
  // );
  // static TextStyle text16Grey8096W400 = TextStyle(
  //   color: AppColors.grey718096,
  //   fontWeight: FontWeight.w400,
  //   fontSize: 16 * SizeConfig.textMultiplier!,
  //   height: 1,
  //   fontFamily: 'Circular',
  // );
  // static TextStyle text16blue3350DBW400 = TextStyle(
  //   color: AppColors.blue3350DB,
  //   fontWeight: FontWeight.w400,
  //   fontSize: 16 * SizeConfig.textMultiplier!,
  //   height: 1.3,
  //   fontFamily: 'Circular',
  // );
  //
  // static TextStyle text15red534ADW400 = TextStyle(
  //   color: AppColors.red534A,
  //   fontWeight: FontWeight.w400,
  //   fontSize: 15 * SizeConfig.textMultiplier!,
  //   height: 1,
  //   fontFamily: 'Circular',
  // );
  //
  // static TextStyle text18greyA0AEW700 = TextStyle(
  //   color: AppColors.greyA0AE,
  //   fontWeight: FontWeight.w700,
  //   fontSize: 18 * SizeConfig.textMultiplier!,
  //   fontFamily: 'Circular',
  // );


}
class SizeConfig {
  static double? _screenWidth;
  static double? textMultiplier;
  static double? imageSizeMultiplier;
  static double? heightMultiplier;
  static double? widthMultiplier;
  static bool isPortrait = true;
  static bool isMobilePortrait = false;
  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      _screenWidth = constraints.maxWidth;
      isPortrait = true;
      if (_screenWidth! < 450) {
        isMobilePortrait = true;
      }
    } else {
      _screenWidth = constraints.maxHeight;
      isPortrait = false;
      isMobilePortrait = false;
    }
    // textMultiplier = _blockSizeVertical / 6.4;
    // imageSizeMultiplier = _blockSizeHorizontal / 3.6;
    // heightMultiplier = _blockSizeVertical / 6.4;
    // widthMultiplier = _blockSizeHorizontal / 3.6;
    // textMultiplier = 1.sp;
    // imageSizeMultiplier = 1;
    // heightMultiplier = 1.h;
    // widthMultiplier = 1.w;
  }
}