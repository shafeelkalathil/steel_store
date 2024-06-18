import 'package:flutter/material.dart';
import 'package:steel_store/common/widgets/appbar/appbar.dart';
import 'package:steel_store/features/shop/screens/product_reviews/widgets/over_all_product_rating.dart';
import 'package:steel_store/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:steel_store/utils/constant/size.dart';
import '../../../../common/widgets/products/rating/rating_indicator.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///appbar
      appBar: const TAppBar(title: Text("Review & Ratings"),showBackArrow: true,),

      ///body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Rating and review are verified and are from people who use the same type of device that you use."),
              const SizedBox(height: TSize.spaceBtwItems,),

              ///Overall product rating
              const TOverAllProductRating(),
              const TRatingBarIndicator(rating: 4.5,),
              Text("12,612",style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: TSize.spaceBtwSections,),

              ///User review list
              const UserReviewCard()
            ],
          ),
        ),
      ),
    );
  }
}





