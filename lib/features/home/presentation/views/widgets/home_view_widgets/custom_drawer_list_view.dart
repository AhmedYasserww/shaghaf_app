import 'package:flutter/material.dart';

import '../../../../data/models/drawer_item_model.dart';
import 'custom_drawer_list_tile.dart';

class CustomDrawerListView extends StatelessWidget {
  const CustomDrawerListView({
    super.key,
    required this.items,
    required this.onItemTap,
  });

  final List<DrawerItemModel> items;
  final void Function(DrawerItemModel) onItemTap;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, i) {
        return CustomDrawerListTile(
            onTap: () => onItemTap(items[i]), drawerItemModel: items[i]);
      },
    );
  }
}
