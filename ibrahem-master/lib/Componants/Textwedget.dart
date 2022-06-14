import 'package:flutter/material.dart';

class TextFaildWedgit extends StatelessWidget {
  const TextFaildWedgit({
    Key? key,
    required this.hintTitle,
  }) : super(key: key);
  final String hintTitle;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintTextDirection: TextDirection.ltr,
        hintText: hintTitle,
        hintStyle:
            TextStyle(color: Colors.grey.shade400, fontWeight: FontWeight.bold),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(color: Colors.grey, width: 0.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
    );
  }
}
