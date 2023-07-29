import 'package:flutter/material.dart';

class ImageAssetAtom extends StatelessWidget {
  final String path;
  final double? width;
  final double? height;
  final BoxFit? fit;

  const ImageAssetAtom(
    this.path, {
    super.key,
    this.width,
    this.height,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      width: width,
      height: height,
      fit: fit,
    );
  }
}
