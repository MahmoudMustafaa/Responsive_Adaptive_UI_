import 'package:flutter/material.dart';
import 'package:responsive_1/widgets/custom_list_view.dart';
import 'package:responsive_1/widgets/custom_sliver_grid.dart';

class MobileLauout extends StatelessWidget {
  const MobileLauout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        CustomSliverGrid(),
        CustomSliverListView()
      ],
    );
  }
}
