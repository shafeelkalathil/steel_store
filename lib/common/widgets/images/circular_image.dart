import 'package:flutter/material.dart';
import 'package:steel_store/utils/helpers/helper_function.dart';

import '../../../utils/constant/colors.dart';
import '../../../utils/constant/size.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
    this.width = 56,
    this.height = 56,
    this.padding = TSize.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width,height,padding;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunction.isDarkMood(context);
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: backgroundColor ?? (isDarkMode ? TColors.black : TColors.white),
          borderRadius: BorderRadius.circular(100)
      ),
      child: Image(
        fit: fit,
        image: isNetworkImage
            ?NetworkImage(image)
            :AssetImage(image) as ImageProvider,
        color: overlayColor,
      ),
    );
  }
}