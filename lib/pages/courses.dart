import 'package:flutter/material.dart';
import 'package:computerstudiessociety/pages/comp_sci.dart';
import 'package:computerstudiessociety/pages/info_sys.dart';
import 'package:computerstudiessociety/pages/info_tech.dart';
import 'package:computerstudiessociety/pages/lib_sci.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CCS Programs'),
        centerTitle: true,
        backgroundColor: Color(0xff40444b),
        foregroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(color: Color(0xff575d69), width: 1),
                ),
              ),
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Text(
                "College Courses",
                style: TextStyle(
                  color: Color(0xff202224),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            FilledButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ComputerSciencePage()),
                );
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.white),
                alignment: Alignment.centerLeft,
              ),
              icon: Icon(
                Icons.arrow_right,
                color: Color(0xff40444b),
                size: 24,
              ),
              label: Text(
                "Computer Science",
                style: TextStyle(
                  color: Color(0xff445e8c),
                  fontSize: 16,
                ),
              ),
            ),
            FilledButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => InformationTechnologyPage()),
                );
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.white),
                alignment: Alignment.centerLeft,
              ),
              icon: Icon(
                Icons.arrow_right,
                color: Color(0xff40444b),
                size: 24,
              ),
              label: Text(
                "Information Technology",
                style: TextStyle(
                  color: Color(0xff445e8c),
                  fontSize: 16,
                ),
              ),
            ),
            FilledButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => InformationSystemsPage()),
                );
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.white),
                alignment: Alignment.centerLeft,
              ),
              icon: Icon(
                Icons.arrow_right,
                color: Color(0xff40444b),
                size: 24,
              ),
              label: Text(
                "Information Systems",
                style: TextStyle(
                  color: Color(0xff445e8c),
                  fontSize: 16,
                ),
              ),
            ),
            FilledButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LibraryInformationSciencesPage()),
                );
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.white),
                alignment: Alignment.centerLeft,
              ),
              icon: Icon(
                Icons.arrow_right,
                color: Color(0xff40444b),
                size: 24,
              ),
              label: Text(
                "Library and Information Science",
                style: TextStyle(
                  color: Color(0xff445e8c),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

