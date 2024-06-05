import 'package:flutter/material.dart';

import '../../../utils/constant/colors.dart';
import '../../../utils/constant/size.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(100)
          ),
          child: IconButton(
            onPressed: () {

            },
            icon: const Image(
                width: TSize.iconMd,
                height: TSize.iconMd,
                image: NetworkImage("https://static-00.iconduck.com/assets.00/google-icon-2048x2048-pks9lbdv.png")),
          ),
        ),
        const SizedBox(width: TSize.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(100)
          ),
          child: IconButton(
            onPressed: () {

            },
            icon: const Image(
                width: TSize.iconMd,
                height: TSize.iconMd,
                image: NetworkImage("https://techdocs.akamai.com/identity-cloud/img/social-login/identity-providers/apple-icon-white-23.jpg")),
          ),
        ),
      ],
    );
  }
}
