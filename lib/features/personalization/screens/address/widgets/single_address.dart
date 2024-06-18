
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:steel_store/utils/constant/size.dart';
import 'package:steel_store/utils/helpers/helper_function.dart';

import '../../../../../common/widgets/custom_shape/container/rounded_container.dart';
import '../../../../../utils/constant/colors.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMood(context);
    return TRoundedContainer(
      padding: const EdgeInsets.all(TSize.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress ? TColors.primary.withOpacity(0.5) : Colors.transparent,
      borderColor: selectedAddress ? Colors.transparent : dark ?TColors.darkerGrey : TColors.grey,
      margin: const EdgeInsets.only(bottom: TSize.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
              top: 0,
              child: Icon(selectedAddress ? Iconsax.tick_circle5 : null,color: selectedAddress ? dark ? TColors.light : TColors.dark.withOpacity(0.6) : null,)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Shafeel kalathil",
                maxLines: 1,
               overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: TSize.sm / 2,),
              const Text("+91 9081726344",maxLines: 1,overflow: TextOverflow.ellipsis,),
              const SizedBox(height: TSize.sm / 2,),
              const Text("825437 Timay Canvas , South Line , Maine, 67543, USA",softWrap: true,),
            ],
          )
        ],
      ),
    );
  }
}
