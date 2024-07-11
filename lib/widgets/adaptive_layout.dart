import 'package:flutter/material.dart';
import 'package:responsive_1/widgets/desktop_layout.dart';
import 'package:responsive_1/widgets/mobile_layout.dart';
import 'package:responsive_1/widgets/tablet_layout.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, Constraints) {
        if (Constraints.maxWidth < 500) {
          return const MobileLauout();
        } else if (Constraints.maxWidth < 800) {
          return const TabletLayout();
        } else {
          return const DesktopLayout();
        }
      },
    );
  }
}
