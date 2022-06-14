import 'package:flutter/material.dart';
import 'package:shopingapp/Componants/MenuCard.dart';

class DrawarWidget extends StatelessWidget {
  const DrawarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 100, horizontal: 10),
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/images/b.png'),
          ),
          SizedBox(
            height: 21,
          ),
          Center(
            child: Text(
              'Rachelle D.Michael',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              Divider(),
              MenuCard(
                press: () {
                  Navigator.pushReplacementNamed(context, '/HomeScreen');
                },
                icon: Icons.home_outlined,
                title: 'Home',
              ),
              Divider(),
              MenuCard(
                press: () {},
                icon: Icons.book_outlined,
                title: 'Course',
              ),
              Divider(),
              MenuCard(
                press: () {},
                icon: Icons.newspaper_outlined,
                title: 'News',
              ),
              Divider(),
              MenuCard(
                press: () {
                  Navigator.pushReplacementNamed(context, '/ProductScreen');
                },
                icon: Icons.shopping_bag,
                title: 'Products',
              ),
              Divider(),
              MenuCard(
                press: () {
                  Navigator.pushReplacementNamed(context, '/WelcomeScreen');
                },
                icon: Icons.shopping_cart_outlined,
                title: 'Cart',
              ),
              Divider(),
              MenuCard(
                press: () {},
                icon: Icons.person,
                title: 'My Profile',
              ),
              Divider(),
              MenuCard(
                press: () {
                  Navigator.pushNamed(context, '/SettingScreen');
                },
                icon: Icons.settings,
                title: 'Settings',
              ),
              Divider(),
              MenuCard(
                press: () {},
                icon: Icons.logout_outlined,
                title: 'Logout',
              ),
            ],
          )
        ],
      ),
    );
  }
}
