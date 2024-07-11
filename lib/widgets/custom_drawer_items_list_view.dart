import 'package:flutter/material.dart';
import 'package:responsive_1/models/drawer_item_model.dart';
import 'package:responsive_1/widgets/custom_drawer_item.dart';

class CustomDraweritemsListView extends StatelessWidget {
  const CustomDraweritemsListView({
    super.key,
    required this.items,
  });

  final List<DrawerItemModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return CustomDrawerItem(
          drawerItemModel: items[index],
        );
      },
    );
  }
}
