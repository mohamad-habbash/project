import 'package:flutter/material.dart';
import 'package:shopingapp/Componants/Textwedget.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(35),
        child: Column(
          children: [
            Text(
              'Enter your new password below',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: Colors.grey.shade500, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 80,
            ),
            TextFaildWedgit(
              hintTitle: '   Current Password',
            ),
            SizedBox(
              height: 10,
            ),
            TextFaildWedgit(
              hintTitle: '   New Password',
            ),
            SizedBox(
              height: 10,
            ),
            TextFaildWedgit(
              hintTitle: '   Confirm New Password',
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Save',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 55),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ],
        ),
      ),
    );
  }
}
