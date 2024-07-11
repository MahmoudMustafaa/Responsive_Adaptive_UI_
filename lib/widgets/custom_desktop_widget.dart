import 'package:flutter/material.dart';
import 'package:responsive_1/widgets/Custom_Item.dart';
import 'package:responsive_1/widgets/custom_item_2.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(flex: 2, child: CustomItem()),
        SizedBox(
          height: 16,
        ),
        Expanded(child: CustomItem2()),
      ],
    );
  }
}
