import 'package:ahmad_practices/constant/app_color/app_color.dart';
import 'package:ahmad_practices/widget/size_config.dart';
import 'package:flutter/material.dart';
class ColorCardContainer extends StatelessWidget {
  final Widget child;
  Color? color;
  bool? wantMargin;

  ColorCardContainer({
    required this.child,
    this.color,
    this.wantMargin = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: wantMargin == true
            ? EdgeInsets.only(
            left: 16 * SizeConfig.widthMultiplier!,
            right: 16 * SizeConfig.widthMultiplier!)
            : EdgeInsets.only(
            left: 22 * SizeConfig.widthMultiplier!,
            right: 21 * SizeConfig.widthMultiplier!),
        padding: EdgeInsets.only(bottom: 4 * SizeConfig.widthMultiplier!),
        decoration: BoxDecoration(
            color: color ?? AppColors.blue3570,
            borderRadius:
            BorderRadius.circular(5 * SizeConfig.widthMultiplier!)),
        child: child);
  }
}
