import 'package:flutter/material.dart';

import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/constant/size.dart';
import '../../../../../utils/constant/text.dart';
import '../../../../../utils/helpers/helper_function.dart';

class TTermsAndConditions extends StatelessWidget {
  const TTermsAndConditions({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMood(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {

          },),
        ),
        const SizedBox(width: TSize.spaceBtwItems,),
        Text.rich(TextSpan(
            children: [
              TextSpan(text: '${TTexts.iAgreeTo} ',style: Theme.of(context).textTheme.bodySmall),
              TextSpan(text: '${TTexts.privacyPolicy} ',style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? Colors.white : TColors.primary,
                  decorationColor: dark ? Colors.white : TColors.primary,
                  decoration: TextDecoration.underline
              )),
              TextSpan(text: 'and ',style: Theme.of(context).textTheme.bodySmall),
              TextSpan(text: TTexts.termOfUse,style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? Colors.white : TColors.primary,
                  decorationColor: dark ? Colors.white : TColors.primary,
                  decoration: TextDecoration.underline
              )),
            ]
        ))
      ],
    );
  }
}