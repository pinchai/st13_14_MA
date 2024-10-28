import 'package:flutter/material.dart';

void main() {
  runApp(AppFooter());
}

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Footer',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.list_alt,
            size: 30,
          ),
          title: const Text("App Footer"),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.qr_code_rounded,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                  )),
            ),
          ],
        ),
        body: Stack(
          children: [
            SizedBox(width: 100,),
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
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    const BoxShadow(
                      color: Colors.red,
                      offset: const Offset(
                        1.0,
                        2.0,
                      ), //Offset
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              left: 20,
              child: Container(
                height: 220,
                width: 170,
                // color: Colors.red,
                child: Column(
                  children: [
                    Text("Mario", style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink
                    ),),
                    Text(
                      "The Mario Party series is back and more jam-packed than ever! With over 110 minigames, new online* and offline** modes, and plenty of customization choices, there’s something for every kind of partygoer!",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.white70
                    ),),

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
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 1,
          onTap: (e) {
            print(e);
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(icon: Icon(Icons.casino), label: "Balance"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Setting"),
          ],
        ),
      ),
    );
  }
}
