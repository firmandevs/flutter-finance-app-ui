import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../consts.dart';
import '../../styles/colors.dart';
import '../../styles/label.dart';
import '../../widgets/container/rounded_container.dart';
import '../detail/detail.dart';
import 'widgets/bottom_nav_bar.dart';
import 'widgets/dashboard_item_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        leading: const RotatedBox(
          quarterTurns: 1,
          child: Icon(
            EvaIcons.barChart,
            color: black,
          ),
        ),
        actions: [
          RoundedContainer(
            width: 40,
            height: 30,
            border: 1,
            margin: const EdgeInsets.only(right: 16, top: 5, bottom: 5),
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: white,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            vertical: 50,
            horizontal: 28,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello David",
                        style: montserrat(
                          fontWeight: bold,
                          textStyle: h5(context),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Welcome Back!",
                        style: montserrat(fontWeight: bold, color: grey),
                      ),
                    ],
                  ),
                  RoundedContainer(
                    color: grey.withOpacity(0.1),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DetailPage()),
                          );
                        },
                        icon: const Icon(
                          EvaIcons.trendingUpOutline,
                          color: primaryColor,
                        )),
                  )
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 18,
                crossAxisSpacing: 10,
                children: const [
                  DashboardItemCardWidget(
                    height: 160,
                    color: softGreen,
                    value: "230k",
                    title: "Sales",
                    iconData: EvaIcons.loaderOutline,
                  ),
                  DashboardItemCardWidget(
                    height: 200,
                    color: softPurple,
                    value: "8.672k",
                    title: "Customers",
                    iconData: EvaIcons.personOutline,
                  ),
                  DashboardItemCardWidget(
                    height: 210,
                    color: softAmber,
                    value: "9.823k",
                    title: "Products",
                    iconData: EvaIcons.layoutOutline,
                  ),
                  DashboardItemCardWidget(
                      height: 170,
                      color: softPeach,
                      value: "749k",
                      title: "Revenue",
                      iconData: EvaIcons.pieChartOutline),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}






//?i @firmanmaulanayusuf
