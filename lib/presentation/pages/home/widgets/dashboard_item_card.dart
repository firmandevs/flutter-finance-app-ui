import 'package:flutter/material.dart';

import '../../../consts.dart';
import '../../../styles/label.dart';
import '../../../widgets/container/rounded_container.dart';

class DashboardItemCardWidget extends StatelessWidget {
  final String title;
  final String value;
  final Color color;
  final double height;
  final IconData iconData;

  const DashboardItemCardWidget({
    Key? key,
    required this.title,
    required this.value,
    required this.color,
    required this.height,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
        color: color,
        height: height,
        radius: 40,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData),
            const SizedBox(height: 10),
            Text(
              value,
              style: montserrat(
                fontWeight: bold,
                textStyle: h5(context),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: montserrat(
                textStyle: bodySmall(context),
              ),
            ),
          ],
        ));
  }
}
