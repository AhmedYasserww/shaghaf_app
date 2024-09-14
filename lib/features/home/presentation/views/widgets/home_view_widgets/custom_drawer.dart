import 'package:flutter/material.dart';
import 'package:shagaf/core/utils/assets.dart';
import 'package:shagaf/features/home/data/models/drawer_item_model.dart';
import 'package:shagaf/features/home/presentation/views/widgets/home_view_widgets/custom_drawer_list_view.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.only(left: 44, top: 73),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 95,
              height: 160,
                child: Image(image: AssetImage(AssetsData.logo))),

            CustomDrawerListView(
              onItemTap: (value){

              }
                ,
                items: items),
          ],
        ),
      ),
    );
  }
}


