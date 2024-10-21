import 'package:flutter/material.dart';

void main() {
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
          // leading: Icon(Icons.list),
          title: Image.network(
              "https://tpc.googlesyndication.com/simgad/18330968784087429596?sqp=4sqPyQQ7QjkqNxABHQAAtEIgASgBMAk4A0DwkwlYAWBfcAKAAQGIAQGdAQAAgD-oAQGwAYCt4gS4AV_FAS2ynT4&rs=AOga4qntf-qydnx3hi--w0aDWGYJ6hXYmA"),
          centerTitle: true,
          actions: [
            Icon(Icons.qr_code_rounded),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.notifications),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.print),
            SizedBox(
              width: 10,
            )
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Pinchai"),
                accountEmail: Text("pinchai.pc@gamail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage("https://picsum.photos/200"),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  print("Clicked home menu");
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  print("Clicked profile menu");
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Setting"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  print("Clicked setting menu");
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  print("Clicked logout menu");
                },
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text("About"),
                onTap: () {
                  print("Clicked about menu");
                },
              )
            ],
          ),
        ),
        body: Center(
          child: Stack(
            children: [
              Container(
                height: 400,
                width: 400,
              ),
              Positioned(
                bottom: 0,
                left: 10,
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black87,
                        offset: const Offset(
                          1.0,
                          1.0,
                        ), //Offset
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 20,
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    // color: Colors.purple,
                    image: const DecorationImage(
                      fit: BoxFit.contain,
                      image: NetworkImage(
                        // 'https://cdn.pixabay.com/photo/2017/09/01/00/15/png-2702691_1280.png',
                        'https://purepng.com/public/uploads/large/purepng.com-super-mariomariosuper-mariovideo-gamefictional-characternintendoshigeru-miyamotomario-franchise-17015286383789a9am.png',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 1,
          onTap: (index){print(index);},
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notification"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
          ],
        ),
      ),
    );
  }
}
