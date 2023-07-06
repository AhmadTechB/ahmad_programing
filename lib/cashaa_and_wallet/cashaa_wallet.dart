import 'package:ahmad_practices/constant/app_style/app_style.dart';
import 'package:ahmad_practices/constant/image_path/image_path.dart';
import 'package:ahmad_practices/image_loader/image_loader.dart';
import 'package:ahmad_practices/widget/size_config.dart';
import 'package:flutter/material.dart';

class CashAndWallet extends StatefulWidget {
  const CashAndWallet({super.key});

  @override
  State<CashAndWallet> createState() => _CashAndWalletState();
}

class _CashAndWalletState extends State<CashAndWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 104 * SizeConfig.heightMultiplier!,
          ),
          Padding(
            padding:  EdgeInsets.only(left: 123 * SizeConfig.widthMultiplier!,
            right: 117 * SizeConfig.widthMultiplier!
            ),
            child: Text(
              "Current Holding",
              style: AppTextStyle.text17LiteGrey8096W400,
            ),
          ),
          SizedBox(
            height: 13 * SizeConfig.heightMultiplier!,
          ),
          Padding(
            padding:  EdgeInsets.only(left: 65 *SizeConfig.heightMultiplier!,
            ),
            child: Row(
              children: [
                Text(
                  "CAS 1000.0040",
                  style: AppTextStyle.text35DarkBlue1237W700,
                ),
                ImageLoader.svgImageAsset(
                    width: 40 * SizeConfig.widthMultiplier!,
                    imagePath: ImagePath.locIcon
                ),
              ],
            ),
          ),
          SizedBox(
            height: 14 * SizeConfig.heightMultiplier!,
          ),
          Padding(
            padding: EdgeInsets.only(left: 115 * SizeConfig.widthMultiplier!,
              right: 115 * SizeConfig.widthMultiplier!
            ),
            child: Text(
              "\$2789,4011.58",
              style: AppTextStyle.text20LiteGrey8096W400,
            ),
          ),
          SizedBox(
            height: 13 * SizeConfig.heightMultiplier!,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  color: Colors.lightGreen,
                  child: Text("Earn up to 7%"),
                ),
              ),
              SizedBox(
                width: 14 * SizeConfig.widthMultiplier!,
              ),
              Expanded(
                child: Container(
                  color: Colors.lightGreen,
                  child: Text("50% LTV"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
