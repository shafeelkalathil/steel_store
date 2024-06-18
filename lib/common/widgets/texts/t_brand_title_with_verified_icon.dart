import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';
import 'package:steel_store/common/widgets/texts/t_brand_title_text.dart';
import 'package:steel_store/utils/constant/colors.dart';
import 'package:steel_store/utils/constant/enum.dart';

import '../../../utils/constant/size.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = TColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSize.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor,iconColor;
  final TextAlign? textAlign;
  final TextSize brandTextSize;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: TBrandTitleText(
              title: title,
              color: textColor,
              maxLines: maxLines,
              textAlign: textAlign,
              brandTextSize: brandTextSize,
            )),
        const SizedBox(width: TSize.xs,),
        Icon(Iconsax.verify5, color: iconColor, size: TSize.iconXs,)
      ],
    );
  }
}