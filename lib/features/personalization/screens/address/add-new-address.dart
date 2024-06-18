import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:steel_store/common/widgets/appbar/appbar.dart';
import 'package:steel_store/utils/constant/size.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text("Add new address"),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user),labelText: "Name"),),
                const SizedBox(height: TSize.spaceBtwInputFields,),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.mobile),labelText: "Phone number"),),
                const SizedBox(height: TSize.spaceBtwInputFields,),
                Row(
                  children: [
                    Expanded(child:
                    TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_31),labelText: "Street"),), ),
                    const SizedBox(width: TSize.spaceBtwInputFields,),
                    Expanded(child:
                    TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.code),labelText: "Postal Code"),), ),
                  ],
                ),
                const SizedBox(height: TSize.spaceBtwInputFields,),
                Row(
                  children: [
                    Expanded(child:
                    TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building),labelText: "City"),), ),
                    const SizedBox(width: TSize.spaceBtwInputFields,),
                    Expanded(child:
                    TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.activity),labelText: "State"),), ),
                  ],
                ),
                const SizedBox(height: TSize.spaceBtwInputFields,),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global),labelText: "Country"),),
                const SizedBox(height: TSize.spaceBtwInputFields,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: const Text("Save"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
