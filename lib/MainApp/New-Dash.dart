import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../Dashboard/Information.dart';
import '../Dashboard/request.dart';
import '../Dashboard/report.dart';


import 'package:trash_to_go_app/widget/category_card.dart';
import 'package:trash_to_go_app/widget/search_bar.dart';
import '../Dashboard/Trashtype.dart';





class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
    
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color(0xFF87F08D),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/green-tea.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: 52,
                      
                    ),
                  ),
                  Text(
                    "Keep Jamaica Clean!",
                    style: Theme.of(context)
                        .textTheme
                        .display1
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Trash Type",
                          svgSrc: "assets/dumpcan.png",
                          press: () {
                            Navigator.push(
                                              context,
                                                MaterialPageRoute(
                                                     builder: (context) => Trashtype()));
                          },
                        ),
                        CategoryCard(
                          title: "Information Desk",
                          svgSrc: "assets/personal.png",
                          press: () {
                            Navigator.push(
                                              context,
                                                MaterialPageRoute(
                                                     builder: (context) => GettingStartedScreen()));
                          },
                        ),
                        CategoryCard(
                          title: "Request",
                          svgSrc: "assets/requestt.png",
                          press: () {
                            Navigator.push(
                                              context,
                                                MaterialPageRoute(
                                                     builder: (context) => RequestForm()));
                          },
                        ),
                        CategoryCard(
                          title: "Report",
                          svgSrc: "assets/graph.png",
                          press: () {
                             Navigator.push(
                                              context,
                                                MaterialPageRoute(
                                                     builder: (context) => Report()));
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
