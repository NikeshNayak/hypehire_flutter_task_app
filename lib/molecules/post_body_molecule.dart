import 'package:flutter/material.dart';
import 'package:hypehire_flutter_task_app/atoms/chip_atom.dart';
import 'package:hypehire_flutter_task_app/style/colors.dart';
import 'package:hypehire_flutter_task_app/style/strings.dart';
import 'package:hypehire_flutter_task_app/style/typography.dart';

class PostBodyMolecule extends StatelessWidget {
  const PostBodyMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          AppStrings.bodyText1,
          style: TextStyle(
            color: AppColors.darkBlueColor,
            fontSize: 14,
            fontWeight: FontWeight.w700,
            fontFamily: AppTypography.familyNotoSans,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          AppStrings.bodyText2,
          style: TextStyle(
            color: AppColors.darkBlueColor,
            fontSize: 12,
            fontWeight: FontWeight.w500,
            fontFamily: AppTypography.familyNotoSans,
          ),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 15),
        Wrap(
          children: AppStrings.tags.map((value) => ChipAtom(text: value)).toList(),
        ),
      ],
    );
  }
}
