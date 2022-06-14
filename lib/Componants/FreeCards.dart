import 'package:flutter/material.dart';

class FreeCards extends StatelessWidget {
  const FreeCards({
    Key? key,
    required this.title,
    required this.image,
    required this.press,
  }) : super(key: key);
  final String title, image;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          Container(
            height: 110,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 10),
            height: 65,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 244, 178, 24),
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
