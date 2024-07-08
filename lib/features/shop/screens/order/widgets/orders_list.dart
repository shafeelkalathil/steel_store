import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:steel_store/common/widgets/custom_shape/container/rounded_container.dart';
import 'package:steel_store/utils/constant/colors.dart';
import 'package:steel_store/utils/constant/size.dart';
import 'package:steel_store/utils/helpers/helper_function.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMood(context);
    return ListView.separated(
      shrinkWrap: true,
        itemBuilder: (context, index) => TRoundedContainer(
          showBorder: true,
          backgroundColor: dark ? TColors.dark :TColors.light,
          padding: const EdgeInsets.all(TSize.md),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ///Row -1
              Row(
                children: [
                  ///Icon
                  const Icon(Iconsax.ship),
                  const SizedBox(width: TSize.spaceBtwItems/2,),

                  ///Status and Date
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Processing",style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primary,fontWeightDelta: 1),),
                        Text("20 Jun 2024",style: Theme.of(context).textTheme.headlineSmall,)
                      ],
                    ),
                  ),

                  ///Icon
                  IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right,size: TSize.iconSm,))
                ],
              ),
              const SizedBox(height: TSize.spaceBtwItems,),
              ///Row -2
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        ///Icon
                        const Icon(Iconsax.tag),
                        const SizedBox(width: TSize.spaceBtwItems/2,),

                        ///Status and Date
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Order",style: Theme.of(context).textTheme.labelMedium),
                              Text("[#246f2]",style: Theme.of(context).textTheme.titleMedium,)
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),

                  Expanded(
                    child: Row(
                      children: [
                        ///Icon
                        const Icon(Iconsax.calendar),
                        const SizedBox(width: TSize.spaceBtwItems/2,),

                        ///Status and Date
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Shipping Date",style: Theme.of(context).textTheme.labelMedium),
                              Text("21 Jun 2024",style: Theme.of(context).textTheme.titleMedium,)
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(height: TSize.spaceBtwItems,),
        itemCount: 5);
  }
}
