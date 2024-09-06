import 'package:flutter/material.dart';

class DrawerItemModel{
  final String title;
  final IconData icon;

  const DrawerItemModel({required this.title, required this.icon});

}
final List<DrawerItemModel> items =  [
 const DrawerItemModel(title: "Profile", icon: Icons.account_circle),
  const DrawerItemModel(title: "English", icon: Icons.language),
  const DrawerItemModel(title: "Orders", icon: Icons.shopping_cart_outlined),
  const DrawerItemModel(title: "Notifications", icon: Icons.notification_important),
  const DrawerItemModel(title: "Rating", icon: Icons.star),
  const DrawerItemModel(title: "Contact Us", icon: Icons.contact_page_outlined),
];
