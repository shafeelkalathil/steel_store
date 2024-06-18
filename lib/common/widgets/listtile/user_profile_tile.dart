import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constant/colors.dart';
import '../images/circular_image.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key, this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(
        image: "https://media.istockphoto.com/id/1795068462/photo/cheerful-handsome-young-arab-entrepreneur-guy-posing-indoors.jpg?s=2048x2048&w=is&k=20&c=QCC_tG_uyBBkcjkM1mrtnwzRjbsyLDTK9uX8LjF742I=",
        isNetworkImage: true,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text("Shafeel kalathil",style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),),
      subtitle: Text("support@shafeel.com",style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),),
      trailing: IconButton(onPressed: (){},icon: const Icon(Iconsax.edit,color: TColors.white,),),
      onTap: onTap,
    );
  }
}
