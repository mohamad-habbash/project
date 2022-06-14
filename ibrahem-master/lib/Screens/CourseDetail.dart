import 'package:flutter/material.dart';
import 'package:shopingapp/Componants/LesonWedgit.dart';
import 'package:shopingapp/Componants/ProductCard.dart';

class CourseDetail extends StatefulWidget {
  const CourseDetail({Key? key}) : super(key: key);

  @override
  State<CourseDetail> createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Detail'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              Text(
                'Diploma of information Technology NetWordking',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'By',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(' Gilberto S. Osborne'),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    '36 Reviews',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ' (View All)',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.amber[700]),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Start On',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(' 05 Feb '),
                  Text(
                    '2020',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    '2020',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('|'),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '27 Lessions',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    '75.00 KWD',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber[700]),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'About this Course',
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  children: <InlineSpan>[
                    TextSpan(
                      text:
                          'Relax and do whatever fist with your design process Don\'t set a lot of restrictive hard-and-fast rules. Use filler text where it helps your desgin process, but use real content if you\'ve got it as long as it dosen\'t distract and slow down your design process use real content where possible, and where it dosen\'t create too much distraction. ',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.grey, fontSize: 18),
                    ),
                    TextSpan(
                      text: 'Read More ...',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.black, fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Courses',
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  LisoneWedgit(
                    color: Colors.transparent,
                    title: 'Lesone 01: ',
                    icon: Icons.play_arrow,
                    subtitle: 'Introduction',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LisoneWedgit(
                    color: Colors.white,
                    title: 'Lesone 02: ',
                    icon: Icons.play_arrow,
                    subtitle: 'Introduction',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LisoneWedgit(
                    color: Colors.white,
                    title: 'Lesone 03: ',
                    icon: Icons.play_arrow,
                    subtitle: 'Introduction',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LisoneWedgit(
                    color: Colors.white,
                    title: 'Lesone 04: ',
                    icon: Icons.play_arrow,
                    subtitle: 'Introduction',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
