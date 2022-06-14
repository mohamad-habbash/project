import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shopingapp/Componants/Drawer.dart';
import 'package:shopingapp/Componants/FreeCards.dart';
import 'package:shopingapp/Componants/FreeCourses.dart';
import 'package:shopingapp/Componants/MenuCard.dart';
import 'package:shopingapp/Componants/PaidCourses.dart';

import '../Componants/CheckOutDemos.dart';
import '../Componants/TitleCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      drawer: DrawarWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TitleCard(
              title: 'Check out Our Demos',
              icon: Icons.arrow_forward_ios,
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 40,
                    spreadRadius: 0.5,
                    color: Colors.grey)
              ]),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    CheckOutdemos(
                      press: () {},
                      image: 'assets/images/dark.jpg',
                      subtilte: 'Photoshope',
                      title: 'How To Add lightning effect in photos',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CheckOutdemos(
                      press: () {},
                      image: 'assets/images/dark.jpg',
                      subtilte: 'Photoshope',
                      title: 'How To Add lightning effect in photos',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CheckOutdemos(
                      press: () {},
                      image: 'assets/images/dark.jpg',
                      subtilte: 'Photoshope',
                      title: 'How To Add lightning effect in photos',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TitleCard(title: 'Our Free Courses', icon: Icons.arrow_forward_ios),
            FreeCourses(),
            SizedBox(
              height: 10,
            ),
            TitleCard(title: 'Our Paid Cours', icon: Icons.arrow_forward_ios),
            PaidCourses(),
            TitleCard(title: 'Our Free Courses', icon: Icons.arrow_forward_ios),
            FreeCourses(),
            SizedBox(
              height: 10,
            ),
            TitleCard(title: 'Our Free Cours', icon: Icons.arrow_forward_ios),
            PaidCourses(),
            TitleCard(title: 'Our Paid Courses', icon: Icons.arrow_forward_ios),
            FreeCourses(),
            SizedBox(
              height: 10,
            ),
            TitleCard(title: 'Our Free Cours', icon: Icons.arrow_forward_ios),
            PaidCourses(),
          ],
        ),
      ),
    );
  }
}
