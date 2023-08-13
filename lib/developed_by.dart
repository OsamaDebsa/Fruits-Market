import 'package:e_commerce/core/widgets/space_widget.dart';
import 'package:flutter/material.dart';
import 'core/utils/constants.dart';

class DeveloperPage extends StatelessWidget {
  const DeveloperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Developer Information",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            VerticalSpace(2),
            ListTile(
              leading: Icon(
                Icons.chevron_right_rounded,
                color: kgc,
              ),
              title: Text(
                'Name',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Osama Debas',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.chevron_right_rounded,
                color: kgc,
              ),
              title: Text(
                'Phone',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                '01124757923',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.chevron_right_rounded,
                color: kgc,
              ),
              title: Text(
                'Email',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'osamas1616@gmail.com',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
