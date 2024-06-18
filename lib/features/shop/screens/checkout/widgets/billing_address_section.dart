
import 'package:flutter/material.dart';
import 'package:steel_store/common/widgets/texts/section_heading.dart';
import 'package:steel_store/utils/constant/size.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title: "Shipping Address ",buttonTitle: "Change",onPressed: (){},),
        Text("Shafeel Kalathil",style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: TSize.spaceBtwItems / 2,),
        Row(
          children: [
            const Icon(Icons.phone , color: Colors.grey, size: 16,),
            const SizedBox(width: TSize.spaceBtwItems,),
            Text("+91 9087654321",style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems / 2,),
        Row(
          children: [
            const Icon(Icons.location_history , color: Colors.grey, size: 16,),
            const SizedBox(width: TSize.spaceBtwItems,),
            Expanded(child: Text("South Lane,Kerala, Malappu",style: Theme.of(context).textTheme.bodyMedium,softWrap: true,))
          ],
        ),
      ],
    );
  }
}
