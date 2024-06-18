import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:steel_store/utils/helpers/helper_function.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shape/curved_edge/curved_edge_widget.dart';
import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../common/widgets/images/t_rounded_images.dart';
import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/constant/size.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMood(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: dark ? TColors.darkGrey : TColors.light,
        child: Stack(
          children: [
            ///maqin-large-image
            const SizedBox(
                height: 400,
                child: Padding(
                  padding: EdgeInsets.all(TSize.productImageRadius * 2),
                  child: Center(child: Image(image: NetworkImage("https://images.unsplash.com/photo-1572635196237-14b3f281503f?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),)),
                )),

            ///image-slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSize.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(itemBuilder: (context, index) =>  TRoundedImage(
                  backgroundColor: dark ? TColors.dark : TColors.white,
                  border: Border.all(color: TColors.primary),
                  padding: const EdgeInsets.all(TSize.sm),
                  width: 80,
                  imageUrl: "https://images.unsplash.com/photo-1572635196237-14b3f281503f?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  isNetWorkImage: true,
                ),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    separatorBuilder: (context, index) => const SizedBox(width: TSize.spaceBtwItems,), itemCount: 4),
              ),
            ),

            ///appbar
            const TAppBar(
              showBackArrow: true,
              actions: [
                TCircularIcon(icon: Iconsax.heart5,color: Colors.red,)
              ],
            )
          ],
        ),
      ),
    );
  }
}