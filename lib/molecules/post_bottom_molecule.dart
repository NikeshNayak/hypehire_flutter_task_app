import 'package:flutter/material.dart';
import 'package:hypehire_flutter_task_app/atoms/post_icon_atom.dart';
import 'package:hypehire_flutter_task_app/atoms/image_asset_atom.dart';
import 'package:hypehire_flutter_task_app/style/asset_images.dart';

class PostBottomMolecule extends StatelessWidget {
  const PostBottomMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
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
          SizedBox(width: 12),
          ImageAssetAtom(
            AppImagePath.bookmark,
            height: 20,
            width: 20,
          ),
          SizedBox(width: 20),
          ImageAssetAtom(
            AppImagePath.threeDotMore,
            height: 12,
            width: 12,
          ),
        ],
      ),
    );
  }
}
