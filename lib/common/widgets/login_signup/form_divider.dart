import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:steel_store/utils/helpers/helper_function.dart';

import '../../../utils/constant/colors.dart';
import '../../../utils/constant/text.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({super.key, required this.dividerText});

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMood(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? TColors.darkerGrey : TColors.grey, thickness: 0.5,indent: 60,endIndent: 5,)),
        Text(dividerText, style: Theme.of(context).textTheme.labelMedium,),
        Flexible(child: Divider(color: dark ? TColors.darkerGrey : TColors.grey, thickness: 0.5,indent: 5,endIndent: 60,))
      ],
    );
  }
}
