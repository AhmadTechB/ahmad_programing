import 'package:ahmad_practices/constant/app_style/app_style.dart';
import 'package:ahmad_practices/image_loader/image_loader.dart';
import 'package:ahmad_practices/widget/custom_sized_box.dart';
import 'package:ahmad_practices/widget/size_config.dart';
import 'package:flutter/material.dart';

class ImageAndText extends StatelessWidget {
  String? imagePath;
  String? title;
   ImageAndText({super.key,
  this.imagePath,
     this.title
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(left: 10 * SizeConfig.widthMultiplier!,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: ImageLoader.imageAsset(
              width: 80,
              imagePath: imagePath ,
            ),
          ),
          CustomSizedBox(height: 7,),
          Text(
              title?? "",
              style: AppTextStyle.text18blue0612W400
          )
        ],
      ),
    );
  }
}
