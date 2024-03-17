import 'package:flutter/material.dart';
import 'package:motasa_hc_app/core/style/my_text_style.dart';
import 'package:motasa_hc_app/modules/home/home_controller.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key, required this.homeController});
  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "Delivery Order",
        style: MyTextStyle.appBar,
      ),
      actions: [
        PopupMenuButton(itemBuilder: (context) {
          return [
            const PopupMenuItem<int>(
              value: 0,
              child: Text("Log out"),
            ),
          ];
        }, onSelected: (value) {
          if (value == 0) {
            homeController.authManager.logOut();
          }
        }),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
