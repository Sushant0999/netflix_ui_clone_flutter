import 'package:flutter/material.dart';
import 'package:netflix/utils/routes.dart';

class Hot extends StatefulWidget {
  const Hot({Key? key}) : super(key: key);

  @override
  State<Hot> createState() => _HotState();
}

class _HotState extends State<Hot> {
  int selectedIndex = 2;
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
          body: Container(
            child: Center(
              child: Text(
                'Hot',
                style: TextStyle(color: Colors.amber),
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.black,
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
