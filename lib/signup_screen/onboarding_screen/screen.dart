import 'package:ahmad_practices/constant/app_color/app_color.dart';
import 'package:ahmad_practices/constant/image_path/image_path.dart';
import 'package:ahmad_practices/image_loader/image_loader.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  double? width;
  double? height;

  SignUpScreen({Key? key, this.width}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 120,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: ImageLoader.svgImageAsset(
                    imagePath: ImagePath.arrowLeftIcon),
              ),
              SizedBox(
                width: 43,
              ),
              ImageLoader.imageAsset(
                imagePath: ImagePath.cashaaLogo,
                width: 198,
                height: 38,
              ),
            ],
          ),
          SizedBox(
            height: 43,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 58, right: 59),
            child: Text(
              "Please choose account type",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.darkBlue1237,
                fontSize: 34,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 21),
            child: Container(
              width: 386,
              height: 120,
              // color: ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 2,
                  color: AppColors.blue50DB,
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ImageLoader.svgImageAsset(
                        imagePath: ImagePath.userIcon),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 26, top: 24),
                        child: Text(
                          "For Personal",
                          style: TextStyle(
                            color: AppColors.grey8096,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 26),
                        child: Text(
                          "Simple and fast way to use with\nselected features for personal use",
                          style: TextStyle(
                            color: AppColors.grey8096,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 11,top: 11,bottom: 90),
                        child: ImageLoader.svgImageAsset(
                            imagePath: ImagePath.checkCircleIcon),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 11,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 21),
            child: Container(
              width: 386,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 2,
                  color: AppColors.blue50DB,
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ImageLoader.svgImageAsset(
                        imagePath: ImagePath.breifcaseMoneyIcon),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 26, top: 24),
                        child: Text(
                          "For Business",
                          style: TextStyle(
                            color: AppColors.blue50DB,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 26),
                        child: Text(
                          "Take in-deep features and hold non\nall controls with Business use",
                          style: TextStyle(
                            color: AppColors.darkBlue1237,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 11,top: 11,bottom: 90),
                        child: ImageLoader.svgImageAsset(
                            imagePath: ImagePath.checkedCircleIcon),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
