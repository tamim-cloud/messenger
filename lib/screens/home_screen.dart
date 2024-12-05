import 'package:flutter/material.dart';
import 'package:messenger/data/chobi_data.dart';
import 'package:messenger/screens/widgets/design_widget.dart';
import 'package:messenger/screens/widgets/new_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        
        // child: Padding(
        //   padding: EdgeInsets.all(10),
        // child: Column(
        //   children: [
        //     ...chobiData.map((e) => NewWidget(chobi: e)),
        //   ],
        // ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: chobiData.length,
                itemBuilder: (context, index) =>
                    DesignWidget(chobi: chobiData[index]),
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: chobiData.length,
                itemBuilder: (context, index) =>
                    NewWidget(chobi2: chobidata2[index]),
              ),
            ),
          ],
        ),
      ),
    );
    //);
  }
}
