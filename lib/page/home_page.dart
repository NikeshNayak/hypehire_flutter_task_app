import 'package:flutter/material.dart';
import 'package:hypehire_flutter_task_app/atoms/image_asset_atom.dart';
import 'package:hypehire_flutter_task_app/atoms/svg_asset_atom.dart';
import 'package:hypehire_flutter_task_app/molecules/comment_molecule.dart';
import 'package:hypehire_flutter_task_app/molecules/post_body_molecule.dart';
import 'package:hypehire_flutter_task_app/molecules/post_bottom_molecule.dart';
import 'package:hypehire_flutter_task_app/molecules/post_header_molecule.dart';
import 'package:hypehire_flutter_task_app/molecules/post_images_molecule.dart';
import 'package:hypehire_flutter_task_app/style/asset_images.dart';
import 'package:hypehire_flutter_task_app/style/colors.dart';
import 'package:hypehire_flutter_task_app/style/strings.dart';
import 'package:hypehire_flutter_task_app/style/typography.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            title: const Text(
              '자유톡',
              style: TextStyle(
                color: AppColors.darkBlueColor,
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontFamily: AppTypography.familyNotoSans,
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: SvgAssetAtom(
                  AppSVGPath.bell,
                  width: 30,
                  height: 30,
                ),
              ),
            ],
          ),
          body: const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PostHeaderMolecule(),
                      SizedBox(height: 10),
                      PostBodyMolecule(),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                PostImagesMolecules(),
                PostBottomMolecule(),
                Divider(
                  thickness: 2,
                  color: AppColors.dividerColor,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      CommentMolecule(
                        title: AppStrings.personOneText,
                        body: AppStrings.comment1BodyText,
                        imagePath: AppImagePath.avatar,
                        isVerified: true,
                        child: CommentMolecule(
                          title: AppStrings.personTwoText,
                          body: AppStrings.comment2BodyText,
                          imagePath: AppImagePath.avatar2,
                          isVerified: false,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                  height: 2,
                  color: AppColors.dividerColor,
                ),
                ListTile(
                  dense: true,
                  leading: ImageAssetAtom(
                    AppImagePath.selectImage,
                    height: 20,
                    width: 20,
                  ),
                  title: Text(
                    AppStrings.bottomText1,
                    style: TextStyle(
                      color: AppColors.greyColor2,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: AppTypography.familyNotoSans,
                    ),
                  ),
                  trailing: Text(
                    AppStrings.bottomText2,
                    style: TextStyle(
                      color: AppColors.greyColor2,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: AppTypography.familyNotoSans,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
