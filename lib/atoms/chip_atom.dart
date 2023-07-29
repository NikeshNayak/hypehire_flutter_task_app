import 'package:flutter/material.dart';
import 'package:hypehire_flutter_task_app/style/colors.dart';
import 'package:hypehire_flutter_task_app/style/typography.dart';

class ChipAtom extends StatelessWidget {
  final String text;

  const ChipAtom({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0, bottom: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.lightBlueGreyColor2,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: AppColors.greyColor,
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 12),
        child: Text(
          text,
          style: const TextStyle(
            color: AppColors.darkBlueGreyColor,
            fontSize: 12,
            fontWeight: FontWeight.w500,
            fontFamily: AppTypography.familyRoboto,
          ),
        ),
      ),
    );
  }
}
