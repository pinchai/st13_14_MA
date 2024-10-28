import 'package:flutter/material.dart';

void main() {
  runApp(ScreenOverFlow());
}

class ScreenOverFlow extends StatelessWidget {
  const ScreenOverFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListView",
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.add_box),
          title: Text("ListView"),
          actions: [Icon(Icons.confirmation_num_sharp)],
        ),
        body: ListView.builder(
            itemCount: 100,
            itemBuilder: (BuildContext context, int index) {
              return myList(
                leadingImage: Image.network("https://picsum.photos/id/2${index+1}/200/300"),
                title: Text("${index + 1} MR. Dara"),
                subtitle: Text("Department: IT"),
                trailing: IconButton(
                  onPressed: () {
                    print("delete item at index: ${index}");
                  },
                  icon: Icon(
                    Icons.delete_forever_outlined,
                    color: Colors.red,
                  ),
                ),
              );
            }),
      ),
    );
  }

  ListTile myList(
      {
        required Image leadingImage,
        required Text title,
        required Text subtitle,
        required IconButton trailing
      }
    ) {
    return ListTile(
      leading: leadingImage,
      title: title,
      subtitle: subtitle,
      trailing: trailing,
    );
  }
}
