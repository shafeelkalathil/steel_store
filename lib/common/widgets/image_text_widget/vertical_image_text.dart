import 'package:flutter/material.dart';

import '../../../utils/constant/colors.dart';
import '../../../utils/constant/size.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: TSize.spaceBtwItems),
      child: Column(
        children: [
          ///Circular icon
          Container(
            width: 56,
            height: 56,
            padding: const EdgeInsets.all(TSize.sm),
            decoration: BoxDecoration(
              color: TColors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Center(
              child: Image(
                image: NetworkImage("https://images.unsplash.com/photo-1505740420928-5e560c06d30e?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D"),
                fit: BoxFit.cover,
                color: TColors.dark,
              ),
            ),
          ),
          ///Text
          const SizedBox(height:
          TSize.spaceBtwItems/2,),
          SizedBox(
              width: 55,
              child: Text("Shoes",style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.white),maxLines: 1,overflow: TextOverflow.ellipsis,))
        ],
      ),
    );
  }
}