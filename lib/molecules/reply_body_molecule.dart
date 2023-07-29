import 'package:flutter/material.dart';
import 'package:hypehire_flutter_task_app/atoms/image_asset_atom.dart';
import 'package:hypehire_flutter_task_app/style/asset_images.dart';
import 'package:hypehire_flutter_task_app/style/colors.dart';
import 'package:hypehire_flutter_task_app/style/typography.dart';

class ReplyBodyMolecule extends StatefulWidget {
  const ReplyBodyMolecule({super.key});

  @override
  State<ReplyBodyMolecule> createState() => _ReplyBodyMoleculeState();
}

class _ReplyBodyMoleculeState extends State<ReplyBodyMolecule> {

  String replyText = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '안녕 나 응애',
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
          '1일전',
          style: TextStyle(
            color: AppColors.lightBlueGreyColor,
            fontSize: 10,
            fontWeight: FontWeight.w500,
            fontFamily: AppTypography.familyNotoSans,
          ),
        ),
      ],
    );
  }
}
