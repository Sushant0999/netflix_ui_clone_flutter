import 'package:flutter/material.dart';
import 'package:netflix/utils/routes.dart';

class Downloads extends StatefulWidget {
  const Downloads({Key? key}) : super(key: key);

  @override
  State<Downloads> createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads> {
  int selectedIndex = 3;
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  TextStyle textStyle = const TextStyle(
    color: Colors.white,
    fontSize: 15,
  );
  TextStyle text3 = const TextStyle(
    color: Colors.white,
    fontSize: 15,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: Text(
                    'Smart Download',
                    style: textStyle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    'Introducing Smart Download for You',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'Netflix is a streaming service that offers a wide variety of award-winning TV shows, movies, anime, documentaries and more on thousands of internet-connected devices.',
                    style: text3,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.download,
                    color: Colors.grey.shade300,
                    size: 300,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'SETUP',
                      style: text3,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  color: Colors.grey.shade800,
                  child: Center(
                    child: Text(
                      'Find Something to Download',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    });
                  },
                  child: Icon(
                    Icons.home,
                    color: Colors.grey,
                  ),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, MyRoutes.searchRoute);
                    });
                  },
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, MyRoutes.hotRoute);
                    });
                  },
                  child: Icon(
                    Icons.add_card_sharp,
                    color: Colors.grey,
                  ),
                ),
                label: 'Hot',
              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, MyRoutes.downloadRoute);
                    });
                  },
                  child: Icon(
                    Icons.download,
                    color: Colors.grey,
                  ),
                ),
                label: 'Downloads',
              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, MyRoutes.menuRoute);
                    });
                  },
                  child: Icon(
                    Icons.menu,
                    color: Colors.grey,
                  ),
                ),
                label: 'Menu',
              ),
            ],
            currentIndex: selectedIndex,
            selectedItemColor: Colors.white,
            onTap: _onItemTapped,
            elevation: 0,
          ),
        ),
      ),
    );
  }
}
