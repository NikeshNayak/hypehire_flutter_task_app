import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgAssetAtom extends StatelessWidget {
  final String path;
  final double? width;
  final double? height;
  final BoxFit fit;

  const SvgAssetAtom(
    this.path, {
    super.key,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      width: width,
      height: height,
      fit: fit,
    );
  }
}
