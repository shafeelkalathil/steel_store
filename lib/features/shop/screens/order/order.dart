import 'package:flutter/material.dart';
import 'package:steel_store/common/widgets/appbar/appbar.dart';
import 'package:steel_store/features/shop/screens/order/widgets/orders_list.dart';
import 'package:steel_store/utils/constant/size.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text("My Orders",style: Theme.of(context).textTheme.headlineSmall,),showBackArrow: true,),
      body: const Padding(
        padding: EdgeInsets.all(TSize.defaultSpace),
        child: TOrderListItems(),
      ),
    );
  }
}
