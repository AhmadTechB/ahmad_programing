import 'package:ahmad_practices/buttons/blue_button.dart';
import 'package:ahmad_practices/buttons/common_outline_button.dart';
import 'package:ahmad_practices/constant/app_style/app_style.dart';
import 'package:ahmad_practices/image_loader/image_loader.dart';
import 'package:ahmad_practices/widget/size_config.dart';
import 'package:flutter/material.dart';

class EnableFaceId extends StatelessWidget {
  EnableFaceId({Key? key, this.imagePath}) : super(key: key);

  String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enable Face ID"),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 102 * SizeConfig.heightMultiplier!,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 91 * SizeConfig.widthMultiplier!,
              right: 91 * SizeConfig.widthMultiplier!,
            ),
            child: ImageLoader.svgImageAsset(imagePath: imagePath),
          ),
          SizedBox(height: 25 * SizeConfig.heightMultiplier!),
          Padding(
            padding: EdgeInsets.only(
              left: 85 * SizeConfig.widthMultiplier!,
              right: 85 * SizeConfig.widthMultiplier!,
            ),
            child: Text(
              "Enable Face ID",
              style: AppTextStyle.text30DarkBlue1237W5700,
            ),
          ),
          SizedBox(height: 24 * SizeConfig.heightMultiplier!),
          Padding(
            padding: EdgeInsets.only(
              left: 49 * SizeConfig.widthMultiplier!,
              right: 49 * SizeConfig.widthMultiplier!,
            ),
            child: Text(
              "Enjoy Simlper and faster verification",
              style: AppTextStyle.text17LiteGrey8096W400,
            ),
          ),
          SizedBox(height: 34 * SizeConfig.heightMultiplier!),
          CommonButton(
            title: "Enable Now",
          ),
          SizedBox(height: 12 * SizeConfig.heightMultiplier!),
          CommonOutlineButton(
            title: "Maybe Later",
          ),
          SizedBox(height: 13 * SizeConfig.heightMultiplier!),
          Padding(
            padding: EdgeInsets.only(
              left: 27 * SizeConfig.widthMultiplier!,
              right: 27 * SizeConfig.widthMultiplier!,
            ),
            child: Text(
              "Your biometric information will not be\n collected by Cashaa and will be used locally\n for verification purpose only.",
              style: AppTextStyle.text15LiteGrey8096W400,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
