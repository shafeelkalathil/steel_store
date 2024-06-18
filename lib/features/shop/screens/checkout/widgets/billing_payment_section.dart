import 'package:flutter/material.dart';
import 'package:steel_store/common/widgets/custom_shape/container/rounded_container.dart';
import 'package:steel_store/common/widgets/texts/section_heading.dart';
import 'package:steel_store/utils/constant/colors.dart';
import 'package:steel_store/utils/constant/size.dart';
import 'package:steel_store/utils/helpers/helper_function.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMood(context);
    return Column(
      children: [
        TSectionHeading(title: "Payment Method",buttonTitle: "Change",onPressed: (){},),
        const SizedBox(height: TSize.spaceBtwItems / 2,),
        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? TColors.light : TColors.white,
              padding: const EdgeInsets.all(TSize.sm),
              child: const Image(
                image: NetworkImage("https://cdn.pixabay.com/photo/2015/05/26/09/37/paypal-784404_1280.png"),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: TSize.spaceBtwItems / 2,),
            Text("Paypal", style: Theme.of(context).textTheme.bodyLarge,)
          ],
        )
      ],
    );
  }
}
