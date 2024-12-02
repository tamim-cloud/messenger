// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:messenger/models/chobi.dart';

class NewWidget extends StatelessWidget {
  final Chobi2 chobi2;
  const NewWidget({
    super.key,
    required this.chobi2,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 46,
        backgroundImage: AssetImage(
          chobi2.image,
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            chobi2.title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            chobi2.subtitle,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
      trailing: Icon(Icons.notifications_off),
    );
  }
}
