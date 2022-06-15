import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import '../../../styles/colors.dart';
import '../../../widgets/container/rounded_container.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: white,
      selectedItemColor: black,
      unselectedItemColor: grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: RoundedContainer(
              padding: EdgeInsets.all(10),
              radius: 30,
              color: softPeach,
              child: Icon(EvaIcons.homeOutline)),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: RoundedContainer(
              padding: EdgeInsets.all(10),
              radius: 30,
              color: Colors.transparent,
              child: Icon(
                EvaIcons.shoppingBagOutline,
              )),
          label: "Chart",
        ),
        BottomNavigationBarItem(
          icon: RoundedContainer(
              padding: EdgeInsets.all(10),
              radius: 30,
              color: Colors.transparent,
              child: Icon(
                EvaIcons.personOutline,
              )),
          label: "Profile",
        ),
      ],
    );
  }
}
