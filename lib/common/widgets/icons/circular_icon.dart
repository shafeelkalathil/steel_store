import 'package:flutter/material.dart';
import 'package:steel_store/utils/constant/size.dart';
import 'package:steel_store/utils/helpers/helper_function.dart';
import '../../../utils/constant/colors.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = TSize.iconLg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width,height,size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunction.isDarkMood(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color:  backgroundColor !=null ? backgroundColor! : isDarkMode ? TColors.black.withOpacity(0.9) : TColors.white.withOpacity(0.9),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon,color: color,size: size,),
      ),
    );
  }
}