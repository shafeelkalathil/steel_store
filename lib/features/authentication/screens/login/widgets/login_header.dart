import 'package:flutter/material.dart';
import 'package:steel_store/utils/helpers/helper_function.dart';

import '../../../../../utils/constant/size.dart';
import '../../../../../utils/constant/text.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMood(context);
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
              height: 150,
              image: NetworkImage(dark
                  ? "https://blog.hubspot.com/hs-fs/hubfs/ecommerce%20marketing.jpg?width=595&height=400&name=ecommerce%20marketing.jpg"
                  :"https://wp-bn.salesforce.com/blog/wp-content/uploads/sites/2/2023/11/SF_Blog_Image_Ecommerce_Changing_Everything.png")),
          Text(TTexts.loginTitle,style: Theme.of(context).textTheme.headlineMedium,),
          const SizedBox(height: TSize.sm,),
          Text(TTexts.loginSubTitle,style: Theme.of(context).textTheme.bodyMedium,),
       ]);
  }
}
