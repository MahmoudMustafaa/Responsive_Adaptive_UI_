import 'package:flutter/material.dart';
import 'package:responsive_1/widgets/adaptive_layout.dart';
import 'package:responsive_1/widgets/desktop_layout.dart';
import 'package:responsive_1/widgets/mobile_layout.dart';
import 'package:responsive_1/widgets/tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: AdaptiveLayout(
            mobileLayout: (context) => MobileLauout(),
            tabletLayout: (context) => TabletLayout(),
            desktopLayout: (context) => DesktopLayout()));
  }
}
