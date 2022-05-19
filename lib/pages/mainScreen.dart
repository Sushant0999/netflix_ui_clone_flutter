import 'package:flutter/material.dart';
import 'package:netflix/utils/routes.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            Image.asset(
              'image/media/netflix.png',
              fit: BoxFit.cover,
              height: 150,
              width: 150,
            ),
            const SizedBox(
              width: 100,
            ),
            const Icon(
              Icons.edit,
              color: Colors.white,
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  buildAvater('image/avatar.png', 'Viking'),
                  buildAvater('image/avatar2.png', 'Sushant'),
                  buildAvater('image/avatar3.png', 'Sanya'),
                  addNew(),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
      ),
    );
  }

  Widget buildAvater(String s, String s2) => GestureDetector(
        onTap: () {
          setState(() {
            Navigator.pushNamed(context, MyRoutes.homeRoute);
          });
        },
        child: Container(
          decoration: BoxDecoration(
            // color: Colors.red,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  s,
                  height: 100,
                  width: 150,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                s2,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      );

  Widget addNew() => Container(
        margin: EdgeInsets.all(40),
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_outlined,
              color: Colors.white,
              size: 40,
            ),
            Text(
              'Add New',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ],
        ),
      );
}
