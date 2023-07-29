import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:hypehire_flutter_task_app/atoms/image_asset_atom.dart';
import 'package:hypehire_flutter_task_app/style/asset_images.dart';
import 'package:hypehire_flutter_task_app/style/colors.dart';

class PostImagesMolecules extends StatefulWidget {
  const PostImagesMolecules({super.key});

  @override
  State<PostImagesMolecules> createState() => _PostImagesMoleculesState();
}

class _PostImagesMoleculesState extends State<PostImagesMolecules> {
  final _postImageController = PageController();

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: Stack(
        children: [
          PageView.builder(
            controller: _postImageController,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Container(
                color: AppColors.lightGreyColor,
                child: const ImageAssetAtom(
                  AppImagePath.productImage,
                  fit: BoxFit.cover,
                ),
              );
            },
            itemCount: 5,
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            left: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DotsIndicator(
                dotsCount: 5,
                decorator: const DotsDecorator(
                  activeColor: Colors.white,
                  color: Colors.white38,
                ),
                position: _currentIndex.toDouble(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
