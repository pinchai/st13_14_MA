import 'package:flutter/material.dart';

void main(){
  runApp(HelloWorld());
}

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World",
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.list),
          title: Image.network("https://tpc.googlesyndication.com/simgad/18330968784087429596?sqp=4sqPyQQ7QjkqNxABHQAAtEIgASgBMAk4A0DwkwlYAWBfcAKAAQGIAQGdAQAAgD-oAQGwAYCt4gS4AV_FAS2ynT4&rs=AOga4qntf-qydnx3hi--w0aDWGYJ6hXYmA"),
          centerTitle: true,
          actions: [
            Icon(Icons.qr_code_rounded),
            SizedBox(width: 10,),
            Icon(Icons.notifications),
            SizedBox(width: 10,),
            Icon(Icons.print),
            SizedBox(width: 10,)
          ],
        ),
      ),
    );
  }
}
