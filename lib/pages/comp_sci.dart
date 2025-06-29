import 'package:flutter/material.dart';

class ComputerSciencePage extends StatelessWidget {
  const ComputerSciencePage({super.key});

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
                "Computer Science Department",
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
                      '1. Provide a background in modern computing systems and the theoretical aspects of computer science;',
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
                      '2. Develop problem-solving skills in analysis, design and implementation if solutions using computers;',
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
                      '3. Challenge students to consider the ethical and social impacts of technology, enabling them to take responsible action informed by a Christian view;',
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
                      '4. Prepare students for continued learning in a rapidly changing discipline in the science of computing.',
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
                  'assets/course_guide/bscs_1.png',
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
                  'assets/course_guide/bscs_2.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}