import 'package:flutter/material.dart';
import 'package:hypehire_flutter_task_app/atoms/image_asset_atom.dart';
import 'package:hypehire_flutter_task_app/style/colors.dart';
import 'package:hypehire_flutter_task_app/style/typography.dart';

class PostIconAtom extends StatelessWidget {
  final String path;
  final double size;
  final String count;

  const PostIconAtom({
    super.key,
    required this.path,
    required this.size,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageAssetAtom(
          path,
          height: size,
          width: size,
        ),
        const SizedBox(width: 6),
        Text(
          count,
          style: const TextStyle(
            color: AppColors.lightBlueGreyColor3,
            fontSize: 12,
            fontWeight: FontWeight.w400,
            fontFamily: AppTypography.familyRoboto,
          ),
        ),
      ],
    );
  }
}
