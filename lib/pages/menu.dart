import 'package:flutter/material.dart';
import 'package:netflix/utils/routes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  double wid = 45;
  TextStyle text3 = const TextStyle(
    color: Colors.white,
    fontSize: 15,
  );

  int selectedIndex = 4;
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
          body: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    profile(
                      'avatar',
                      'VIKING',
                    ),
                    profile('avatar2', 'SUSHANT'),
                    profile('avatar3', 'SANYA'),
                    addNew(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Center(
                      child: Text(
                        'Manage Profile',
                        style: text3,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                color: Colors.grey.shade900,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.message,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Tell Freinds About Netflix.',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Netflix is a streaming service that offers a wide variety of award-winning TV shows, movies, anime, documentaries and more on thousands of internet-connected devices.',
                      style: text3,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Terms & Condition',
                      style: text3,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 46,
                          width: 285,
                          color: Colors.black,
                          padding: EdgeInsets.all(15),
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          color: Colors.white,
                          child: Center(
                            child: Text(
                              'Copy Link',
                              style: TextStyle(
                                  color: Colors.black,
                                  // fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                            size: 60,
                          ),
                          VerticalDivider(
                            color: Colors.white,
                            thickness: 2,
                            width: wid,
                          ),
                          Icon(
                            FontAwesomeIcons.twitter,
                            color: Colors.white,
                            size: 60,
                          ),
                          VerticalDivider(
                            color: Colors.white,
                            thickness: 2,
                            width: wid,
                          ),
                          Icon(
                            FontAwesomeIcons.whatsapp,
                            color: Colors.white,
                            size: 60,
                          ),
                          VerticalDivider(
                            color: Colors.white,
                            thickness: 2,
                            width: wid,
                          ),
                          Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,
                            size: 60,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
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

  Widget addNew() => Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1),
        ),
        margin: EdgeInsets.fromLTRB(10, 0, 10, 30),
        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
        height: 100,
        width: 100,
        child: Center(
          child: (Icon(
            Icons.add,
            size: 50,
            color: Colors.white,
          )),
        ),
      );

  Widget profile(
    String s1,
    String s2,
  ) =>
      Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: AssetImage(
                    'image/$s1.png',
                  ),
                  height: 100,
                  width: 100,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Center(
              child: Text(
                s2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
}
