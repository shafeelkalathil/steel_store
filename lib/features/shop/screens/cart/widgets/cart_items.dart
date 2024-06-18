import 'package:flutter/cupertino.dart';

import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constant/size.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key, this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) => Column(
          children: [
            const TCartItem(),
            if(showAddRemoveButtons) const SizedBox(height: TSize.spaceBtwItems,),
            if(showAddRemoveButtons) const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 70,),
                    ///Add Remove Button
                    TProductQuantityWithAddRemoveButton(),
                  ],
                ),
                TProductPriceText(price: '256')
              ],
            )
          ],
        ),
        separatorBuilder: (context, index) => const SizedBox(height: TSize.spaceBtwSections,),
        itemCount: 2);
  }
}