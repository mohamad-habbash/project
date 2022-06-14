import 'package:flutter/material.dart';
import 'package:shopingapp/Componants/Drawer.dart';
import 'package:shopingapp/Componants/ProductCard.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart_rounded), onPressed: () {}),
        ],
      ),
      drawer: DrawarWidget(),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              children: [
                ProductCrad(
                  image: 'assets/images/coffe.jpg',
                  Title: 'The Earth Ceramic Coffee Mug',
                  press: () {
                    Navigator.pushNamed(context, '/ProductDetales');
                  },
                  subTitle: '280 KWD',
                ),
                SizedBox(
                  height: 20,
                ),
                ProductCrad(
                  image: 'assets/images/kid.jpg',
                  Title: 'Numeric Flasheard For Kids',
                  press: () {},
                  subTitle: '3.87 KWD',
                ),
                SizedBox(
                  height: 20,
                ),
                ProductCrad(
                  image: 'assets/images/book.jpg',
                  Title: 'Short Love Stores',
                  press: () {},
                  subTitle: '7.74 KWD',
                ),
                SizedBox(
                  height: 20,
                ),
                ProductCrad(
                  image: 'assets/images/man.jpg',
                  Title: 'Time Management',
                  press: () {},
                  subTitle: '7.50 KWD',
                ),
                SizedBox(
                  height: 20,
                ),
                ProductCrad(
                  image: 'assets/images/pink.jpg',
                  Title: 'Pink Coffee Mug',
                  press: () {},
                  subTitle: '280 KWD',
                ),
                SizedBox(
                  height: 20,
                ),
                ProductCrad(
                  image: 'assets/images/dad.jpg',
                  Title: 'Kids Bed Time Stories',
                  press: () {},
                  subTitle: '280 KWD',
                ),
                SizedBox(
                  height: 20,
                ),
                ProductCrad(
                  image: 'assets/images/coffe.jpg',
                  Title: 'RelationShip Mugs',
                  press: () {},
                  subTitle: '280 KWD',
                ),
                SizedBox(
                  height: 20,
                ),
                ProductCrad(
                  image: 'assets/images/kid.jpg',
                  Title: 'Numeric Flasheard For Kids',
                  press: () {},
                  subTitle: '3.87 KWD',
                ),
              ],
            )),
      ),
    );
  }
}
