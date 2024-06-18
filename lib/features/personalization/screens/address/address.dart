import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:steel_store/common/widgets/appbar/appbar.dart';
import 'package:steel_store/features/personalization/screens/address/add-new-address.dart';
import 'package:steel_store/features/personalization/screens/address/widgets/single_address.dart';
import 'package:steel_store/utils/constant/colors.dart';
import 'package:steel_store/utils/constant/size.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>Get.to(()=>const AddNewAddressScreen()),
        child: const Icon(Icons.add,color: TColors.white,),
      ),
      appBar: TAppBar(
        showBackArrow: true,
        title: Text("Address",style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              TSingleAddress(selectedAddress: true,)
            ],
          ),
        ),
      ),
    );
  }
}
