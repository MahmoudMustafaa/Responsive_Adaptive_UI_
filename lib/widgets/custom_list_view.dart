import 'package:flutter/material.dart';
import 'package:responsive_1/widgets/custom_item_2.dart';

class CustomSliverListView extends StatelessWidget {
  const CustomSliverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: 18,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(top: 16),
            child: CustomItem2(),
          );
        });
  }
}
