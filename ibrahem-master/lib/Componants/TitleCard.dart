import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Spacer(),
          Icon(
            icon,
            color: Colors.grey.shade400,
          ),
        ],
      ),
    );
  }
}
