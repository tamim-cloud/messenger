import 'package:flutter/material.dart';
import 'package:messenger/data/chobi_data.dart';
import 'package:messenger/screens/widgets/design_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          // child: Column(
          //   children: [
          //     ...chobiData.map((e) => NewWidget(chobi: e)),
          //   ],
          // ),
          child: ListView.builder(
            itemCount: chobiData.length,
            itemBuilder: (context, index) => DesignWidget(chobi: chobiData[index]),
            
          ),
        ),
      ),
    );
  }
}
