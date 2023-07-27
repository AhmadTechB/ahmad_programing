import 'package:ahmad_practices/constant/app_style/app_style.dart';
import 'package:ahmad_practices/image_loader/image_loader.dart';
import 'package:ahmad_practices/widget/custom_sized_box.dart';
import 'package:ahmad_practices/widget/size_config.dart';
import 'package:flutter/material.dart';

class ColumnImageAndText extends StatelessWidget {
  String? imagePath;
  String? title;
  String? subTitle;
  String? subTitle1;
  String? subTitle2;
  String? subTitle3;
  ColumnImageAndText({super.key,
    this.imagePath,
    this.title,
    this.subTitle,
    this.subTitle1,
    this.subTitle2,
    this.subTitle3
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(left: 12 * SizeConfig.widthMultiplier!,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ImageLoader.imageAsset(
            width:85,
            imagePath: imagePath ,
          ),
          CustomSizedBox(height: 7,),
          Text(
              title?? "",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Color(0xff000000)
              ),
          ),
          CustomSizedBox(height: 10,),
          Text(
              subTitle?? "",
              style:TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000)
              ),
          ),
          CustomSizedBox(height: 10,),
          Text(
              subTitle1?? "",
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000)
              ).copyWith(
                  decoration: TextDecoration.lineThrough
              )
          ),
          CustomSizedBox(height: 8,),
          Row(
            children: [
              Text(
                  subTitle2?? "₹299.00",
               style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000)
                ),
              ),
              CustomSizedBox(width: 4,),
              Text(
                subTitle3?? "25% OFF",
                style:TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000)
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}