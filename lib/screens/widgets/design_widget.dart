// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
//import 'package:messenger/data/chobi_data.dart';
//import 'package:messenger/data/chobi_data.dart';

import 'package:messenger/models/chobi.dart';
//import 'package:messenger/screens/widgets/new_widget.dart';

class DesignWidget extends StatelessWidget {
  final Chobi chobi;
  const DesignWidget({
    super.key,
    required this.chobi,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage(chobi.imagePath),
                ),
                Text(
                  chobi.name,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
          ],
        ),
      ],
    );
  }
}
