import 'package:ahmad_practices/widget/size_config.dart';
import 'package:flutter/cupertino.dart';

class CustomSizedBox extends StatelessWidget {
  CustomSizedBox({this.height, this.width});

  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (height ?? 0.0) * SizeConfig.heightMultiplier!,
      width: (width ?? 0.0) * SizeConfig.widthMultiplier!,
    );
  }
}
