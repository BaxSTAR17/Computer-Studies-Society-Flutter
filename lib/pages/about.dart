import 'package:flutter/material.dart';

class DevTeamPage extends StatelessWidget {
  const DevTeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About the Dev Team'),
        centerTitle: true,
        backgroundColor: Color(0xff40444b),
        foregroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(color: Color(0xff575d69), width: 1),
                ),
              ),
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
              child: Text(
                "Development Team",
                style: TextStyle(
                  color: Color(0xff202224),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person_4,
                    color: Color(0xff445e8c),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Carlos Joaquin Macalolot'),
                      Text(
                        'Project Manager\nWeb App Developer\nBack End Developer',
                        style: TextStyle(
                          fontSize: 8
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    color: Color(0xff445e8c),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Joshua Kg Briones'),
                      Text(
                        'Web App Developer\nBack End Developer',
                        style: TextStyle(
                            fontSize: 8
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    color: Color(0xff445e8c),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Joseph Andrei Galicia'),
                      Text(
                        'Mobile App Developer\nDatabase Manager',
                        style: TextStyle(
                            fontSize: 8
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    color: Color(0xff445e8c),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Baxter Gifford Bao-as'),
                      Text(
                        'Mobile App Developer\nBack End Developer\nDatabase Manager',
                        style: TextStyle(
                            fontSize: 8
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    color: Color(0xff445e8c),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ghen Benedict Namol'),
                      Text(
                        'Mobile App Developer',
                        style: TextStyle(
                            fontSize: 8
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    color: Color(0xff445e8c),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hiroshi Villanueva'),
                      Text(
                        'Graphics Designer',
                        style: TextStyle(
                            fontSize: 8
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    color: Color(0xff445e8c),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('John Paul Casiwan'),
                      Text(
                        'Graphics Designer\nMobile App Developer',
                        style: TextStyle(
                            fontSize: 8
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

