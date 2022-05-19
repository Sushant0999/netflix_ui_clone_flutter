import 'package:flutter/material.dart';

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            children: [
              Image.asset(
                'image/logo.png',
                height: 50,
                width: 40,
              ),
              SizedBox(
                width: 50,
              ),
              appButton('My List'),
            ],
          ),
        ),
        backgroundColor: Colors.black,
        body: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          padding: EdgeInsets.zero,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          children: [
            poster('1'),
            poster('3'),
            poster('3'),
            poster('4'),
            poster('5'),
            poster('6'),
            poster('7'),
            poster('8'),
            poster('9'),
            poster('10'),
            poster('11'),
            poster('12'),
            poster('13'),
            poster('14'),
            poster('1'),
            poster('2'),
            poster('3'),
            poster('4'),
          ],
        ),
      ),
    );
  }

  Widget poster(String s) => Container(
        decoration: BoxDecoration(color: Colors.red),
        child: Image.asset(
          'image/media/$s.jpg',
          height: 200,
          fit: BoxFit.fill,
        ),
      );

  Widget appButton(String s) => TextButton(
        onPressed: () {},
        child: Text(
          s,
          style: const TextStyle(color: Colors.white),
        ),
      );
}
