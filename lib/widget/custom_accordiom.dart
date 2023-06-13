// ignore_for_file: must_be_immutable


import 'package:ahmad_practices/constant/app_color/app_color.dart';
import 'package:ahmad_practices/constant/image_path/image_path.dart';
import 'package:ahmad_practices/image_loader/image_loader.dart';
import 'package:ahmad_practices/widget/custom_sized_box.dart';
import 'package:ahmad_practices/widget/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAccordion extends StatelessWidget {
  CustomAccordion(
      {Key? key,
        this.title,
        this.onTap,
        this.wantExtractRow = false,
         this.child,
        required this.imagePath,
        this.subTitleChild})
      : super(key: key);

  String? title;
  Widget? subTitleChild;
  String? imagePath;

  VoidCallback? onTap;

  bool wantExtractRow;
  Widget? child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(12 * SizeConfig.widthMultiplier!),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: AppColor.whiteF7F8FD),
                child: ImageLoader.svgImageAsset(
                    imagePath: imagePath,
                    color: wantExtractRow == true
                        ? AppColor.blue3350DB
                        : AppColor.darkBlue1237),
              ),
              CustomSizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title ?? "",
                    style: TextStyle(
                        color: wantExtractRow == true
                            ? AppColor.blue3350DB
                            : AppColor.darkBlue1237,
                        fontWeight: FontWeight.w700,
                        fontSize: 14 * SizeConfig.textMultiplier!),
                  ),
                  subTitleChild ?? Container()
                ],
              ),
              const Spacer(),
              SvgPicture.asset(
                wantExtractRow
                    ? ImagePath.arrowUpIcon
                    : ImagePath.settingArrowDownIcon,
              ),
            ],
          ),
        ),
        CustomSizedBox(
          height: 25,
        ),
        wantExtractRow ? child ?? Container() : Container(),




        if (wantExtractRow == true)
          CustomSizedBox(
            height: 26,
          ),
        Divider(
          thickness: 1 * SizeConfig.widthMultiplier!,
          endIndent: 15 * SizeConfig.widthMultiplier!,
        ),
      ],
    );
  }
}
