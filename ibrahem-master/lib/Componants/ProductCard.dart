import 'package:flutter/material.dart';

class ProductCrad extends StatelessWidget {
  const ProductCrad({
    Key? key,
    required this.Title,
    required this.subTitle,
    required this.press,
    required this.image,
  }) : super(key: key);
  final String Title, subTitle;
  final String image;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(10),
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 10),
                  spreadRadius: 0.1,
                  blurRadius: 7,
                  color: Colors.grey.withOpacity(0.25))
            ],
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover))),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    subTitle,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 252, 177, 64)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
