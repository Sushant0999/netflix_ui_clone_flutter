import 'package:flutter/material.dart';
import 'package:netflix/utils/routes.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  int selectedIndex = 0;
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 5, right: 5, top: 20, bottom: 10),
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.search,
                      color: Color(0xffA3A3A3),
                    ),
                    Center(
                      child: Text(
                        'Search for show, movie, genre, etc',
                        style: TextStyle(
                          color: Color(0xffA3A3A3),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.mic,
                      color: Color(0xffA3A3A3),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color(0xff424242),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Top Serches',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              searchIcon('Extraction', 'extract'),
              searchIcon('Dark Desire', 'dd'),
              searchIcon('Kota Factory', 'kf'),
              searchIcon('Peaky Blinders', 'pb'),
              searchIcon('Sex Education', 'sex'),
              searchIcon('Squid Games', 'sg'),
              searchIcon('She', 'she'),
              searchIcon('The Witcher', 'witcher'),
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
    ));
  }

  Widget searchIcon(String s, String img) => Container(
        margin: EdgeInsets.only(top: 2, bottom: 2),
        color: Color(0xff424242),
        width: double.infinity,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'image/media/$img.jpg',
              fit: BoxFit.fill,
              height: 100,
              width: 160,
            ),
            Container(
              width: 100,
              margin: const EdgeInsets.only(left: 20, right: 80),
              child: Text(
                s,
                style: const TextStyle(color: Colors.white),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  border: Border.all(width: 4, color: Colors.white),
                ),
                child: Icon(
                  Icons.play_arrow_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
}
