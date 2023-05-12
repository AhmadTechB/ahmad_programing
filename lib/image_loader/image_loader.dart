import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageLoader {
  static Widget imageAsset({
    String? imagePath,
    double? width,
    double? height,
    Color? color,
  }) {
    if (imagePath != null) {
      return Image.asset(
        imagePath,
        width: width,
        height: height,
        color: color,
      );
    }
    return Container();
  }

  static Widget svgImageAsset({
    String? imagePath,
    double? width,
    double? height,}) {
    if (imagePath != null) {
      return SvgPicture.asset(
        imagePath,
        height: height,
        width: width,
      );
    }
    return Container();
  }

  static Widget imageNetworkAsset({
  String? imagepath,
    double? width,
    double? height,
}) {
    if(imagepath!= null){
       return imageNetworkAsset(
         imagepath: imagepath,
         width: width,
         height: height,
       );
    }
return Container();
  }
}
