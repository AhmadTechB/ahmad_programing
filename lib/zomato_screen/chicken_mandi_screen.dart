import 'package:ahmad_practices/constant/app_color/app_color.dart';
import 'package:ahmad_practices/constant/image_path/image_path.dart';
import 'package:ahmad_practices/image_loader/image_loader.dart';
import 'package:ahmad_practices/widget/custom_sized_box.dart';
import 'package:ahmad_practices/widget/size_config.dart';
import 'package:flutter/material.dart';

import '../constant/app_style/app_style.dart';
import 'customs_widgets/slider_row_img_text.dart';

class ArabicChickenMandiScreen extends StatefulWidget {
  const ArabicChickenMandiScreen({super.key});

  @override
  State<ArabicChickenMandiScreen> createState() =>
      _ArabicChickenMandiScreenState();
}

class _ArabicChickenMandiScreenState extends State<ArabicChickenMandiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 16 * SizeConfig.widthMultiplier!,
                  top: 15 * SizeConfig.widthMultiplier!,
                  right: 16 * SizeConfig.widthMultiplier!),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageLoader.imageAsset(
                      width: 25, imagePath: ImagePath.menuDarkIcon),
                  CustomSizedBox(
                    width: 134,
                  ),
                  ImageLoader.imageAsset(
                    width: 30,
                    imagePath: ImagePath.deliveryGirlIcon,
                  ),
                  CustomSizedBox(
                    width: 125,
                  ),
                  ImageLoader.svgImageAsset(
                      width: 28, imagePath: ImagePath.cartIcon),
                ],
              ),
            ),
            CustomSizedBox(
              height: 15,
            ),
            Container(
              height: 35 * SizeConfig.widthMultiplier!,
              margin: EdgeInsets.only(
                  left: 10 * SizeConfig.widthMultiplier!,
                  right: 14 * SizeConfig.widthMultiplier!),
              decoration: BoxDecoration(
                color: AppColors.whiteD9D9,
                borderRadius:
                    BorderRadius.circular(12 * SizeConfig.widthMultiplier!),
              ),
              child: Padding(
                padding:
                    EdgeInsets.only(left: 13 * SizeConfig.widthMultiplier!),
                child: Row(
                  children: [
                    ImageLoader.imageAsset(
                        width: 28, imagePath: ImagePath.searchIcon),
                    CustomSizedBox(
                      width: 9,
                    ),
                    Text(
                      "What are you looking for",
                      style: AppTextStyle.text17Grey1717W400,
                    ),
                  ],
                ),
              ),
            ),
            CustomSizedBox(
              height: 12,
            ),
            SizedBox(
              height: 115 * SizeConfig.heightMultiplier!,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          5 * SizeConfig.widthMultiplier!),
                    ),
                    child: Row(
                      children: [
                        ImageAndText(
                            title: "Home Made", imagePath: ImagePath.dishIcon),
                        CustomSizedBox(
                          width: 14,
                        ),
                        ImageAndText(
                            title: "Home Made", imagePath: ImagePath.dishIcon),
                        CustomSizedBox(
                          width: 14,
                        ),
                        ImageAndText(
                            title: "Home Made", imagePath: ImagePath.dishIcon),
                        CustomSizedBox(
                          width: 14,
                        ),
                        ImageAndText(
                            title: "Home Made", imagePath: ImagePath.dishIcon), CustomSizedBox(
                          width: 14,
                        ),
                        ImageAndText(
                            title: "Home Made", imagePath: ImagePath.dishIcon), CustomSizedBox(
                          width: 14,
                        ),
                        ImageAndText(
                            title: "Home Made", imagePath: ImagePath.dishIcon), CustomSizedBox(
                          width: 14,
                        ),
                        ImageAndText(
                            title: "Home Made", imagePath: ImagePath.dishIcon), CustomSizedBox(
                          width: 14,
                        ),
                        ImageAndText(
                            title: "Home Made", imagePath: ImagePath.dishIcon),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            CustomSizedBox(
              height: 8,
            ),
      SizedBox(
        height: 190 * SizeConfig.heightMultiplier!,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
           Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(
                     5 * SizeConfig.widthMultiplier!),
               ),
             child: Row(
               children: [
                 ImageLoader.imageAsset(
                   imagePath: ImagePath.burgerIcon
                 ),
                 ImageLoader.imageAsset(
                     imagePath: ImagePath.burgerIcon
                 ),  ImageLoader.imageAsset(
                     imagePath: ImagePath.burgerIcon
                 ),  ImageLoader.imageAsset(
                     imagePath: ImagePath.burgerIcon
                 ),  ImageLoader.imageAsset(
                     imagePath: ImagePath.burgerIcon
                 ),  ImageLoader.imageAsset(
                     imagePath: ImagePath.burgerIcon
                 ),
               ],
             ),
           ),
          ],
        ),
      ),
            CustomSizedBox(height: 12,),
            Padding(
              padding:  EdgeInsets.only(left: 12 * SizeConfig.widthMultiplier!,
              right: 12 * SizeConfig.widthMultiplier!
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Today's offer",
                    style: AppTextStyle.text22DarkBlue1237W700,
                  ),
                  Spacer(),
                  Container(
                    width: 65,
                    height: 25 * SizeConfig.widthMultiplier!,
                    decoration: BoxDecoration(
                      color: AppColors.green14,
                      borderRadius:
                      BorderRadius.circular(5 * SizeConfig.widthMultiplier!),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(left: 8,top: 5),
                      child: Text("View all",
                        style: AppTextStyle.text14WhiteFFFW400,
                      ),
                    ),
                  ),
                ],
              ),
            )
    ],
          ),
      ),
    );
  }
}
