import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:steel_store/common/widgets/custom_shape/container/rounded_container.dart';
import 'package:steel_store/common/widgets/products/rating/rating_indicator.dart';
import 'package:steel_store/utils/constant/colors.dart';
import 'package:steel_store/utils/constant/size.dart';
import 'package:steel_store/utils/helpers/helper_function.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMood(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1633332755192-727a05c4013d?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),),
                const SizedBox(width: TSize.spaceBtwItems,),
                Text("Shafeel kalathil",style: Theme.of(context).textTheme.titleLarge,)
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems,),
        ///Review
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(width: TSize.spaceBtwItems,),
            Text('01 Jun, 2024',style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        const SizedBox(height: TSize.spaceBtwItems,),
        const ReadMoreText(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
          trimLines: 2,
          trimExpandedText: " show less",
          trimCollapsedText: "show more",
          moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
          lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
        ),
        const SizedBox(height: TSize.spaceBtwItems,),
        ///company review
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSize.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("S's Store",style: Theme.of(context).textTheme.bodyLarge,),
                    Text("02 Jun,2024",style: Theme.of(context).textTheme.bodyMedium,),
                  ],
                ),
                const SizedBox(height: TSize.spaceBtwItems,),
                const ReadMoreText(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                  trimLines: 2,
                  trimExpandedText: " show less",
                  trimCollapsedText: "show more",
                  moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
                  lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSize.spaceBtwSections,)
      ],
    );
  }
}
