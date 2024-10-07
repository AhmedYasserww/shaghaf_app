import 'package:flutter/material.dart';

import '../../../../data/models/drawer_item_model.dart';

class CustomDrawerListTile extends StatelessWidget {
  final DrawerItemModel drawerItemModel;
  final VoidCallback onTap;
  const CustomDrawerListTile(
      {super.key, required this.drawerItemModel, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Icon(drawerItemModel.icon),
        title: Text(drawerItemModel.title),
        onTap: onTap);
  }
}
