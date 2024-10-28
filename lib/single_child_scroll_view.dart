import 'package:flutter/material.dart';

void main() {
  runApp(ScreenOverFlow());
}

class ScreenOverFlow extends StatelessWidget {
  const ScreenOverFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Manage Screen Overflow",
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.add_box),
          title: Text("SingleChildScrollView"),
          actions: [Icon(Icons.confirmation_num_sharp)],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            splitContainer(width: 200, height: 200, color: Colors.red),
            splitContainer(width: 200, height: 200, color: Colors.green),
            splitContainer(width: 200, height: 200, color: Colors.yellow),
          ]),
        ),
      ),
    );
  }


  Container splitContainer({required double width, required double height, required Color color}){
    return   Container(
      height: height,
      width: width,
      color: color,
    );
  }
}
