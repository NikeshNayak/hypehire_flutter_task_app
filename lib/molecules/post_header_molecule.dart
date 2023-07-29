import 'package:flutter/material.dart';
import 'package:hypehire_flutter_task_app/atoms/image_asset_atom.dart';
import 'package:hypehire_flutter_task_app/style/asset_images.dart';
import 'package:hypehire_flutter_task_app/style/colors.dart';
import 'package:hypehire_flutter_task_app/style/strings.dart';
import 'package:hypehire_flutter_task_app/style/typography.dart';

class PostHeaderMolecule extends StatelessWidget {
  const PostHeaderMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: const ImageAssetAtom(
        AppImagePath.avatar,
        width: 40,
        height: 40,
        fit: BoxFit.fitHeight,
      ),
      title: const Row(
        children: [
          Text(
            AppStrings.personOneText,
            style: TextStyle(
              color: AppColors.darkBlueColor,
              fontSize: 14,
              fontWeight: FontWeight.w700,
              fontFamily: AppTypography.familyNotoSans,
            ),
          ),
          SizedBox(width: 3),
          Icon(
            Icons.check_circle,
            color: AppColors.greenColor,
            size: 14,
          ),
          SizedBox(width: 3),
          Text(
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
      subtitle: const Text(
        AppStrings.personOneSubTitleText,
        style: TextStyle(
          color: AppColors.lightBlueGreyColor,
          fontSize: 12,
          fontWeight: FontWeight.w700,
          fontFamily: AppTypography.familyRoboto,
        ),
      ),
      trailing: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.greenColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          fixedSize: const Size.fromHeight(24),
        ),
        child: const Text(AppStrings.personOneButtonText),
      ),
    );
  }
}
