import 'package:ahmad_practices/constant/app_color/app_color.dart';
import 'package:ahmad_practices/constant/app_style/app_style.dart';
import 'package:ahmad_practices/image_loader/image_loader.dart';
import 'package:ahmad_practices/widget/custom_sized_box.dart';
import 'package:ahmad_practices/widget/size_config.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  String? imagePath;
  String? title;
  String? subTitle;
  double? height;
  double? width;
  bool wantFontSize;
  bool? wantIcon;

  bool wantIconTopPadding;

  VoidCallback ? iconOnTap;
  CustomContainer(
      {Key? key,
        this.imagePath,
      this.title,
      this.subTitle,
      this.height,
      this.width,
      this.wantFontSize = false,
      this.wantIcon = false,
      this.iconOnTap,
        this.wantIconTopPadding = false,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: 16 * SizeConfig.widthMultiplier!,
          right: 16 * SizeConfig.widthMultiplier!),
      width: 328 * SizeConfig.widthMultiplier!,
      height: 72 * SizeConfig.heightMultiplier!,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5 * SizeConfig.widthMultiplier!),

          color: AppColors.greyBackF8FD),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.only(left: 21 * SizeConfig.widthMultiplier!),
            child: SizedBox(
              width: 250 * SizeConfig.widthMultiplier!,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title ?? "",
                    style: AppTextStyle.text13LiteGrey8096W400,
                  ),
                  CustomSizedBox(
                    width: 4,
                  ),
                  Text(
                    subTitle ?? "",
                    style: AppTextStyle.text20DarkBlue1237W400
                        .copyWith(fontSize: wantFontSize == true ? 13 : 20),
                  ),

                ],
              ),
            ),
          ),
          const Spacer(),
          wantIcon == true? GestureDetector(
              onTap: iconOnTap,
            child:  Padding(
              padding: wantIconTopPadding == true ? EdgeInsets.only(right: 13 * SizeConfig.widthMultiplier!,top: 18 * SizeConfig.heightMultiplier!) : EdgeInsets.only(right: 13 * SizeConfig.widthMultiplier!),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageLoader.imageAsset(imagePath:  imagePath,
                  width: 33 * SizeConfig.widthMultiplier!,
                    height: 33 * SizeConfig.heightMultiplier!
                  )
                ],
              ),
            ),
          ) : const SizedBox.shrink()
        ],
      ),

    );
  }
}