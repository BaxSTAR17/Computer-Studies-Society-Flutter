import 'package:flutter/material.dart';

class LibraryInformationSciencesPage extends StatelessWidget {
  const LibraryInformationSciencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CCS APP i guess'),
        centerTitle: true,
        backgroundColor: Color(0xff40444b),
        foregroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(5),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: Color(0xffb8c0ce),
                border: Border(
                  bottom: BorderSide(color: Color(0xff445e8c), width: 1),
                ),
              ),
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Text(
                "Library and Information Science Department",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.7,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              alignment: Alignment.centerLeft,
              //color: Colors.red,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        'Program Objectives'
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 20),
                    //color: Colors.blueGrey,
                    child: Text(
                      textAlign: TextAlign.justify,
                      '1. To provide a strong and flexible educational program that is responsive to the immediate and long-range needs of students, the profession, and those profession serves.',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 20),
                    //color: Colors.blueGrey,
                    child: Text(
                      textAlign: TextAlign.justify,
                      '2. To promote a recognition of the interdisciplinary service-based and user-focused nature of profession.',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 20),
                    //color: Colors.blueGrey,
                    child: Text(
                      textAlign: TextAlign.justify,
                      '3. To provide students with the evaluative and analytical skills to respond flexibly and adaptably to future changes and challenges.',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 20),
                    //color: Colors.blueGrey,
                    child: Text(
                      textAlign: TextAlign.justify,
                      '4. To increase visibility through faculty and student leadership in professional associations, conferences, networks, and consortia at the local, regional, national, and international levels.',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 20),
                    //color: Colors.blueGrey,
                    child: Text(
                      textAlign: TextAlign.justify,
                      '5. To contribute to professional practice and the activities of professional service.',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: Color(0xffb8c0ce),
                border: Border(
                  bottom: BorderSide(color: Color(0xff445e8c), width: 1),
                ),
              ),
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Text(
                "Curriculum Guide",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xff37455e),
                  width: 5
                ),
              ),
              child: Image(
                image: AssetImage(
                  'assets/course_guide/blis_1.png',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color(0xff37455e),
                    width: 5
                ),
              ),
              child: Image(
                image: AssetImage(
                  'assets/course_guide/blis_2.png',
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon:
          FilledButton(
              onPressed: (){},
              child: Text('hi')
          ),
            label: 'Hi',
          ),
          BottomNavigationBarItem(icon:
          FilledButton(
            onPressed: (){},
            child: Text('hi')
          ),
            label: 'Hello',
          ),
        ],
        backgroundColor: Color(0xff40444b),
      ),
    );
  }
}