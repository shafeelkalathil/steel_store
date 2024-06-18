import 'package:flutter/material.dart';
import 'package:steel_store/utils/device/device_utility.dart';
import 'package:steel_store/utils/helpers/helper_function.dart';

import '../../../utils/constant/colors.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget{
  const TTabBar({super.key, required this.tabs});

  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunction.isDarkMood(context);
    return Material(
      color: isDarkMode ? TColors.black : TColors.white,
      child: TabBar(
          tabs: tabs,
          isScrollable: true,
          indicatorColor: TColors.primary,
          unselectedLabelColor: TColors.darkGrey,
          labelColor: isDarkMode ? TColors.white: TColors.primary,
          ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtil.getAppBarHeight());
}
