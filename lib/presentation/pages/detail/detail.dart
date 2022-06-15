import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import '../../consts.dart';
import '../../styles/colors.dart';
import '../../styles/label.dart';
import '../../widgets/container/rounded_container.dart';
import 'widget/line_chart.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        toolbarHeight: kToolbarHeight + 20,
        backgroundColor: white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: IconButton(
            icon: const Icon(
              EvaIcons.chevronLeftOutline,
              color: black,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        actions: [
          RoundedContainer(
            width: 50,
            height: 30,
            border: 1,
            margin: const EdgeInsets.only(right: 16, top: 12, bottom: 12),
            borderColor: primaryColor.withOpacity(0.3),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Image.network(
                  "https://64.media.tumblr.com/59ba591fb6b88cde88883bb38f596e6f/tumblr_psf20puHmH1seh484o1_400.jpg",
                  fit: BoxFit.cover),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ClipRRect(
                borderRadius: BorderRadius.all(Radius.elliptical(35, 40)),
                child: LineChartSample2()),
            const SizedBox(
              height: 36,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sales Revenue",
                    style: montserrat(
                      fontWeight: bold,
                      textStyle: h6(context),
                    ),
                  ),
                  const DetailItemCardWidget(
                    color: softGreen,
                    title: "Sales",
                    subTitle: "Since last week",
                    iconData: EvaIcons.loaderOutline,
                    value: "230k",
                  ),
                  const DetailItemCardWidget(
                    color: softPurple,
                    value: "8.672k",
                    title: "Customers",
                    subTitle: "Since last week",
                    iconData: EvaIcons.loaderOutline,
                  ),
                  const DetailItemCardWidget(
                    color: softAmber,
                    value: "9.823k",
                    title: "Products",
                    iconData: EvaIcons.layoutOutline,
                    subTitle: "Since last week",
                  ),
                  const DetailItemCardWidget(
                      subTitle: "Since last week",
                      color: softPeach,
                      value: "749k",
                      title: "Revenue",
                      iconData: EvaIcons.pieChartOutline),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailItemCardWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String value;
  final Color color;
  final IconData iconData;

  const DetailItemCardWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.value,
    required this.color,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 30, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              RoundedContainer(
                radius: 100,
                margin: const EdgeInsets.all(0),
                padding: const EdgeInsets.all(12),
                color: color,
                child: Icon(
                  iconData,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: montserrat(
                          textStyle: titleMedium(context), fontWeight: bold),
                    ),
                    Text(
                      subTitle,
                      style: montserrat(
                        color: grey,
                        textStyle: bodySmall(context),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Text(
            value,
            style: montserrat(textStyle: titleLarge(context), fontWeight: bold),
          )
        ],
      ),
    );
  }
}
