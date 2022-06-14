import 'package:flutter/material.dart';
import 'package:shopingapp/Componants/CheckOutDemos.dart';
import 'package:shopingapp/Componants/Drawer.dart';
import 'package:shopingapp/Componants/FreeCards.dart';

class ProductDetales extends StatefulWidget {
  const ProductDetales({Key? key}) : super(key: key);

  @override
  State<ProductDetales> createState() => _ProductDetalesState();
}

class _ProductDetalesState extends State<ProductDetales> {
  int value = 0;
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();

    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product detales'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart_rounded), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Expanded(
                child: PageView(
              controller: PageController(
                viewportFraction: 0.88,
                initialPage: 1,
              ),
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/images/coffe.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/images/coffe.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/images/coffe.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/images/coffe.jpg'),
                          fit: BoxFit.cover)),
                ),
              ],
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(360),
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade200,
                    borderRadius: BorderRadius.circular(360),
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade200,
                    borderRadius: BorderRadius.circular(360),
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade200,
                      borderRadius: BorderRadius.circular(360),
                    )),
              ],
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.transparent,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'The Earth Ceramis Coffe Mug',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                                  fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          '280 KWD',
                          style:
                              TextStyle(color: Colors.amber[700], fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 15),
                                    blurRadius: 20,
                                    spreadRadius: 0.5,
                                    color: Colors.grey.withOpacity(0.25))
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40)),
                          height: 50,
                          width: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    value++;
                                  });
                                },
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 20),
                                ),
                              ),
                              Text('$value'),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    value++;
                                  });
                                },
                                child: Text(
                                  '-',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 32),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'About product',
                          style:
                              Theme.of(context).textTheme.headline5!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'It is a long established fact that a reder will be distracted by the readable content of page when looking at its layout.',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.grey[500]),
                    ),
                    Text(
                      'The point of using Lorem Ipsum is that it has a more -or- less normal distribution of latters, as opposed to using \'content here, content her\', making it look like readable English. ',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.grey[500]),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(300, 55),
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(180))),
                        onPressed: () {},
                        child: Text(
                          'ADD TO CART',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
