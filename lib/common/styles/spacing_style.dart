import 'package:flutter/cupertino.dart';

import '../../utils/constant/size.dart';

class TSpacingStyle{
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: TSize.appBarHeight,
    left: TSize.defaultSpace,
    bottom: TSize.defaultSpace,
    right  : TSize.defaultSpace,
  );
}