import 'package:flutter/material.dart';
import 'package:hypehire_flutter_task_app/atoms/image_asset_atom.dart';
import 'package:hypehire_flutter_task_app/atoms/post_icon_atom.dart';
import 'package:hypehire_flutter_task_app/style/asset_images.dart';
import 'package:hypehire_flutter_task_app/style/colors.dart';
import 'package:hypehire_flutter_task_app/style/strings.dart';
import 'package:hypehire_flutter_task_app/style/typography.dart';

class CommentMolecule extends StatelessWidget {
  final String imagePath;
  final String title;
  final String body;
  final bool isVerified;
  final Widget? child;

  const CommentMolecule({
    super.key,
    required this.title,
    required this.body,
    required this.imagePath,
    required this.isVerified,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: ImageAssetAtom(
            imagePath,
            width: 40,
            height: 40,
            fit: BoxFit.fitHeight,
          ),
          title: Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: AppColors.darkBlueColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  fontFamily: AppTypography.familyNotoSans,
                ),
              ),
              const SizedBox(width: 3),
              if (isVerified)
                const Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: AppColors.greenColor,
                      size: 14,
                    ),
                    SizedBox(width: 3),
                  ],
                ),
              const Text(
                AppStrings.personCommonText,
                style: TextStyle(
                  color: AppColors.lightBlueGreyColor,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppTypography.familyNotoSans,
                ),
              ),
            ],
          ),
          trailing: const ImageAssetAtom(
            AppImagePath.threeDotMore,
            height: 12,
            width: 12,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 55.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                body,
                style: const TextStyle(
                  color: AppColors.darkBlueGreyColor2,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: AppTypography.familyNotoSans,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: [
                    PostIconAtom(
                      path: AppImagePath.heart,
                      size: 20,
                      count: '5',
                    ),
                    SizedBox(width: 12),
                    PostIconAtom(
                      path: AppImagePath.reply,
                      size: 20,
                      count: '5',
                    ),
                  ],
                ),
              ),
              child ?? const SizedBox.shrink(),
            ],
          ),
        )
      ],
    );
  }
}
