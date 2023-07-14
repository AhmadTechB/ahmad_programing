import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

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
    double? height,
  Color? color,



  }) {
    if (imagePath != null) {
      return SvgPicture.asset(
        imagePath,
        height: height,
        width: width,
        color: color,
      );
    }
    return Container();
  }

  static Widget networkAssetImage(
      {String? imagePath,
        double? width,
        double? height,
        Color? color,
        double? scale,
        bool? wantsScale = false}) {
    if (imagePath != null) {
      return Transform.scale(
        scale: wantsScale == true ? scale : 1,
        child: Image.network(
          imagePath,
          width: width,
          height: height,
          color: color,
        ),
      );
    }

    return Container();
  }
  // Lotte Asset
  static Widget assetLottie({
    String? imagePath,
    FrameRate? frameRate,
    FilterQuality? filterQuality,
    double? height,
    double? width,
    bool? wantScale = false,
    double? scale,
  }) {
    if (imagePath != null) {
      return wantScale == true
          ? Transform.scale(
        scale: scale,
        child: Lottie.asset(imagePath,
            frameRate: frameRate,
            filterQuality: filterQuality,
            height: height,
            width: width),
      )
          : Lottie.asset(imagePath,
          frameRate: frameRate,
          filterQuality: filterQuality,
          height: height,
          width: width);
    }

    return Container();
  }
}
