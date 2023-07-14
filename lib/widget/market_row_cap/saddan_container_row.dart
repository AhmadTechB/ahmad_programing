import 'package:ahmad_practices/constant/app_color/app_color.dart';
import 'package:ahmad_practices/constant/image_path/image_path.dart';
import 'package:ahmad_practices/image_loader/image_loader.dart';
import 'package:ahmad_practices/widget/custom_sized_box.dart';
import 'package:ahmad_practices/widget/size_config.dart';
import 'package:flutter/material.dart';

class SaddamContainer extends StatelessWidget {
  const SaddamContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSizedBox(
            height: 155,
          ),
          Container(
            margin: EdgeInsets.only(
                left: 16 * SizeConfig.widthMultiplier!,
                right: 16 * SizeConfig.widthMultiplier!),
            width: 329 * SizeConfig.widthMultiplier!,
            height: 95 * SizeConfig.heightMultiplier!,
            decoration: BoxDecoration(
              color: AppColors.whiteF7F8FD,
              borderRadius:
              BorderRadius.circular(15 * SizeConfig.widthMultiplier!),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ImageLoader.imageAsset(
                imagePath: ImagePath.gbgIcon
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
