import 'package:flutter/material.dart';

class InformationTechnologyPage extends StatelessWidget {
  const InformationTechnologyPage({super.key});

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
                "Information Technology Department",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
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
                        'The department aims to:'
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 20),
                    //color: Colors.blueGrey,
                    child: Text(
                      textAlign: TextAlign.justify,
                      '1. Provide technical concepts and practices in the core information technologies;',
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
                      '2. Identify and analyze user needs accurately and take them into account in the selection, creation, evaluation, and administration of delivered computer-based systems;',
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
                      '3. Develop the ability to effectively integrate IT-based solutions into the user environment;',
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
                      '4. Inculcate a deep understanding of the best practices and standards and their ethical application in the IT profession.',
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
                  'assets/course_guide/bsit_1.png',
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
                  'assets/course_guide/bsit_2.png',
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