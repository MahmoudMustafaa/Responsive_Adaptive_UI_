import 'package:flutter/material.dart';
import 'package:responsive_1/widgets/custom_drawer.dart';
import 'package:responsive_1/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: CustomDrawer(),
        backgroundColor: const Color(0XffDBDBDB),
        appBar: MediaQuery.sizeOf(context).width - 32 < 800
            ? AppBar(
                backgroundColor: Colors.black,
                leading: GestureDetector(
                  onTap: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  child: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
              )
            : null,
        body: const HomeViewBody());
  }
}
