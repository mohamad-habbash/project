import 'package:flutter/material.dart';
import 'package:shopingapp/Componants/Drawer.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cart'),
        ),
        drawer: DrawarWidget(),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 70),
                child: Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    child: Image.asset('assets/images/MO.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Whoops!',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Your Cart is empty now. check our products and buy it.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Colors.grey.shade500,
                      fontSize: 18,
                    ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlueAccent.shade400,
                  minimumSize: Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(180),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/ProductScreen');
                },
                child: Text(
                  'GO TO PRODUCTS',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ));
  }
}
