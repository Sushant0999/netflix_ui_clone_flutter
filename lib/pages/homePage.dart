import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:netflix/pages/downloads.dart';
import 'package:netflix/pages/menu.dart';
import 'package:netflix/pages/search.dart';
import 'package:netflix/utils/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  TextStyle textStyle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 30,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'image/logo.png',
                height: 50,
                width: 40,
              ),
              appButton('TV Shows'),
              appButton('Movies'),
              appButton('My List'),
            ],
          ),
        ),
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 400,
                      child: Carousel(
                        images: [
                          imgCro('image/media/1.jpg'),
                          imgCro('image/media/2.jpg'),
                          imgCro('image/media/3.jpg'),
                          imgCro('image/media/4.jpg'),
                          imgCro('image/media/5.jpg'),
                          imgCro('image/media/6.jpg'),
                          imgCro('image/media/7.jpg'),
                          imgCro('image/media/8.jpg'),
                          imgCro('image/media/9.jpg'),
                          imgCro('image/media/10.jpg'),
                          imgCro('image/media/11.jpg'),
                          imgCro('image/media/12.jpg'),
                          imgCro('image/media/13.jpg'),
                          imgCro('image/media/14.jpg'),
                        ],
                        dotSize: 0,
                        dotBgColor: Colors.transparent,
                        animationCurve: Curves.fastOutSlowIn,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.pushNamed(context, MyRoutes.myList);
                              });
                            },
                            child: myListButton(
                              'My List',
                              Icons.add,
                            ),
                          ),
                          play(),
                          myListButton(
                            'Info',
                            Icons.info_outline,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, left: 10),
                          child: Text(
                            'Previews',
                            style: textStyle,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              circleAvater('1'),
                              circleAvater('2'),
                              circleAvater('3'),
                              circleAvater('4'),
                              circleAvater('5'),
                              circleAvater('6'),
                              circleAvater('7'),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 10, bottom: 10, left: 10),
                          child: Text(
                            'Continue Watching For Viking',
                            style: textStyle,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              poster2('0'),
                              poster2('1'),
                              poster2('2'),
                              poster2('3'),
                              poster2('4'),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 10, bottom: 10, left: 10),
                          child: Text(
                            'Popular On Netflix',
                            style: textStyle,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              poster('5'),
                              poster('6'),
                              poster('7'),
                              poster('8'),
                              poster('9'),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 10, bottom: 10, left: 10),
                          child: Text(
                            'Trending Now',
                            style: textStyle,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              poster('10'),
                              poster('11'),
                              poster('12'),
                              poster('13'),
                              poster('14'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
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
    );
  }

  Widget appButton(String s) => TextButton(
        onPressed: () {},
        child: Text(
          s,
          style: const TextStyle(color: Colors.white),
        ),
      );

  Widget myListButton(String s, IconData ico) => Container(
        child: Column(children: [
          Icon(
            ico,
            color: Colors.white,
          ),
          Text(
            s,
            style: TextStyle(color: Colors.white),
          ),
        ]),
      );

  Widget play() => Container(
        padding: const EdgeInsets.all(10),
        height: 40,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(
                Icons.play_arrow,
                color: Colors.black,
              ),
              Text(
                'Play',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ]),
      );

  Widget circleAvater(String s) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          foregroundImage: AssetImage(
            'image/media/$s.jpg',
          ),
          radius: 50,
        ),
      );

  Widget poster(String s) => Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          height: 200,
          child: Image.asset(
            'image/media/$s.jpg',
          ),
        ),
      );
  Widget poster2(String s) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              height: 200,
              child: Image.asset(
                'image/media/$s.jpg',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(
                Icons.info_outline,
                color: Colors.white,
              ),
              SizedBox(
                width: 70,
              ),
              Icon(
                Icons.menu_outlined,
                color: Colors.white,
              ),
            ],
          )
        ],
      );
  Widget imgCro(String s) => Image.asset(
        s,
        fit: BoxFit.fill,
        width: double.infinity,
      );
}
