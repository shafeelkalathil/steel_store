import 'package:flutter/material.dart';
import 'package:steel_store/utils/helpers/helper_function.dart';
import '../custom_shape/container/rounded_container.dart';
import '../../../utils/constant/colors.dart';
import '../../../utils/constant/size.dart';
import 'brand_card.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSize.spaceBtwItems),
      padding: const EdgeInsets.all(TSize.md),
      child: Column(
        children: [
          ///brand with product count
          const TBrandCard(showBorder: false,),
          const SizedBox(height: TSize.spaceBtwItems,),
          ///brand top 3 product image
          Row(
            children: images.map((e) => brandTopProductImageWidget(e,context)).toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image,context){
    final isDarkMode = THelperFunction.isDarkMood(context);
    return Expanded(
      child: TRoundedContainer(
        height: 100,
        backgroundColor: isDarkMode ? TColors.darkGrey : TColors.light,
        margin: const EdgeInsets.only(right: TSize.sm),
        padding: const EdgeInsets.all(TSize.md),
        child: Image(fit: BoxFit.contain,image: NetworkImage(image),),

      ),
    );
  }
}