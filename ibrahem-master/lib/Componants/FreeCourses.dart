import 'package:flutter/material.dart';
import 'package:shopingapp/Componants/FreeCards.dart';

class FreeCourses extends StatelessWidget {
  const FreeCourses({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 15),
              blurRadius: 20,
              spreadRadius: 0.5,
              color: Colors.grey.withOpacity(0.25))
        ],
      ),
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            FreeCards(
              image: 'assets/images/arts.jpg',
              press: () {},
              title: 'Arts and Humanities',
            ),
            SizedBox(
              width: 10,
            ),
            FreeCards(
              image: 'assets/images/latop.jpg',
              press: () {
                Navigator.pushNamed(context, '/CourseDetail');
              },
              title: 'Technology Science',
            ),
            SizedBox(
              width: 10,
            ),
            FreeCards(
              image: 'assets/images/apps.jpg',
              press: () {},
              title: 'Example Cours',
            ),
            SizedBox(
              width: 10,
            ),
            FreeCards(
              image: 'assets/images/arts.jpg',
              press: () {},
              title: 'Example Cours',
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
