import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgPictureWidget extends StatelessWidget {
  final String imagePath;
  final double? width;
  final double? height;
  final BoxFit fit;
  final Color? imageColor;
  const SvgPictureWidget({
    Key? key,
    this.imagePath = "",
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.imageColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      imagePath,
      width: width,
      height: height,
      fit: fit,
      color: imageColor,
    );
  }
}
