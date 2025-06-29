import 'dart:ui';

import 'package:computerstudiessociety/pages/colors.dart';
import 'package:flutter/material.dart';

class QPAPage extends StatefulWidget {
  const QPAPage({super.key});

  @override
  State<QPAPage> createState() => _QPAPageState();
}

List<String> courses = ['Computer Science', 'Information Technology', 'Information Systems', 'Library Information Science'];
List<String> yearlevels = ['First Year', 'Second Year', 'Third Year', 'Fourth Year'];
List<String> semesters = ['First Semester', 'Second Semester'];
Map<String, List<Map<String, dynamic>>> curriculum = {
  "compscifirstfirstSem": [
    { "units": 3, "subject": "CCS 1" },
    { "units": 3, "subject": "CCS 2" },
    { "units": 3, "subject": "CHS 1" },
    { "units": 3, "subject": "GE 4" },
    { "units": 3, "subject": "GE 6" },
    { "units": 3, "subject": "GE 10A" },
    { "units": 2, "subject": "PE 1" },
    { "units": 0, "subject": "" },
  ],
  "compscifirstsecondSem": [
    { "units": 3, "subject": "CompSci 12" },
    { "units": 3, "subject": "CCS 3" },
    { "units": 3, "subject": "CHS 2" },
    { "units": 3, "subject": "GE 1" },
    { "units": 3, "subject": "GE 7" },
    { "units": 3, "subject": "GE 11A" },
    { "units": 2, "subject": "PE 2" },
    { "units": 0, "subject": "" },
  ],
  "compscisecondfirstSem": [
    { "units": 3, "subject": "CompSci 21" },
    { "units": 3, "subject": "CompSci 23" },
    { "units": 3, "subject": "CCS 4" },
    { "units": 3, "subject": "CHS 3" },
    { "units": 3, "subject": "GE 2" },
    { "units": 3, "subject": "GE 5" },
    { "units": 2, "subject": "PE 3" },
    { "units": 0, "subject": "" },
  ],
  "compscisecondsecondSem": [
    { "units": 3, "subject": "CompSci 22" },
    { "units": 3, "subject": "CSMath E1" },
    { "units": 3, "subject": "CCS 8" },
    { "units": 3, "subject": "CCS 5" },
    { "units": 3, "subject": "GE 3" },
    { "units": 3, "subject": "GE 8" },
    { "units": 3, "subject": "GE 9" },
    { "units": 2, "subject": "PE 4" },
  ],
  "compscithirdfirstSem": [
    { "units": 3, "subject": "CompSci 31" },
    { "units": 3, "subject": "CompSci 33" },
    { "units": 3, "subject": "CompSci 35" },
    { "units": 3, "subject": "CompSci 37" },
    { "units": 3, "subject": "CompSci 39" },
    { "units": 3, "subject": "CCS 6" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
  ],
  "compscithirdsecondSem": [
    { "units": 3, "subject": "CompSci 32" },
    { "units": 3, "subject": "CompSci 34" },
    { "units": 3, "subject": "CompSci 36" },
    { "units": 3, "subject": "CompSci 38" },
    { "units": 3, "subject": "CCS 7" },
    { "units": 3, "subject": "CompSci E1" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
  ],
  "compscifourthfirstSem": [
    { "units": 3, "subject": "CompSci 41" },
    { "units": 3, "subject": "CompSci 43" },
    { "units": 3, "subject": "CompSci 45" },
    { "units": 3, "subject": "CompSci 47" },
    { "units": 3, "subject": "CompSci E2" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
  ],
  "compscifourthsecondSem": [
    { "units": 3, "subject": "CompSci 42" },
    { "units": 3, "subject": "CompSci 44" },
    { "units": 3, "subject": "CompSci 46" },
    { "units": 3, "subject": "CompSci E3" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
  ],
  "infotechfirstfirstSem": [
    { "units": 3, "subject": "CCS 1" },
    { "units": 3, "subject": "CCS 2" },
    { "units": 3, "subject": "CHS 1" },
    { "units": 3, "subject": "GE 4" },
    { "units": 3, "subject": "GE 6" },
    { "units": 3, "subject": "GE 10A" },
    { "units": 2, "subject": "PE 1" },
    { "units": 0, "subject": "" },
  ],
  "infotechfirstsecondSem": [
    { "units": 3, "subject": "CCS 3" },
    { "units": 3, "subject": "CHS 2" },
    { "units": 3, "subject": "GE 1" },
    { "units": 3, "subject": "GE 7" },
    { "units": 3, "subject": "GE 11A" },
    { "units": 3, "subject": "GE 3" },
    { "units": 2, "subject": "PE 2" },
    { "units": 0, "subject": "" },
  ],
  "infotechsecondfirstSem": [
    { "units": 3, "subject": "InfoTech 21" },
    { "units": 3, "subject": "InfoTech 23" },
    { "units": 3, "subject": "CCS 4" },
    { "units": 3, "subject": "CHS 3/GE 12" },
    { "units": 3, "subject": "GE 2" },
    { "units": 3, "subject": "GE 5" },
    { "units": 3, "subject": "GE 8" },
    { "units": 2, "subject": "PE 3" },
  ],
  "infotechsecondsecondSem": [
    { "units": 3, "subject": "InfoTech 22" },
    { "units": 3, "subject": "InfoTech 24" },
    { "units": 3, "subject": "InfoTech 26" },
    { "units": 3, "subject": "InfoTech 28" },
    { "units": 3, "subject": "CCS 5" },
    { "units": 3, "subject": "GE 9" },
    { "units": 2, "subject": "PE 4" },
    { "units": 0, "subject": "" },
  ],
  "infotechthirdfirstSem": [
    { "units": 3, "subject": "InfoTech 31" },
    { "units": 3, "subject": "InfoTech 33" },
    { "units": 3, "subject": "InfoTech 35" },
    { "units": 3, "subject": "InfoTech 37" },
    { "units": 3, "subject": "infoTech E1" },
    { "units": 3, "subject": "CCS 6" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
  ],
  "infotechthirdsecondSem": [
    { "units": 3, "subject": "InfoTech 32" },
    { "units": 3, "subject": "InfoTech 34" },
    { "units": 3, "subject": "InfoTech 36" },
    { "units": 3, "subject": "InfoTech E2" },
    { "units": 3, "subject": "CCS 7" },
    { "units": 3, "subject": "CCS 8" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
  ],
  "infotechfourthfirstSem": [
    { "units": 3, "subject": "InfoTech 41" },
    { "units": 3, "subject": "InfoTech 43" },
    { "units": 3, "subject": "InfoTech 45" },
    { "units": 3, "subject": "InfoTech 47" },
    { "units": 3, "subject": "InfoTech E3" },
    { "units": 3, "subject": "InfoTech E4-1/E4-2" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
  ],
  "infotechfourthsecondSem": [
    { "units": 6, "subject": "InfoTech 42" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },

  ],
  "bsisfirstfirstSem": [
    { "units": 3, "subject": "CCS 1" },
    { "units": 3, "subject": "CCS 2" },
    { "units": 3, "subject": "CHS 1" },
    { "units": 3, "subject": "GE 4" },
    { "units": 3, "subject": "GE 6" },
    { "units": 3, "subject": "GE 10A" },
    { "units": 2, "subject": "PE 1" },
    { "units": 0, "subject": "" },
  ],
  "bsisfirstsecondSem": [
    { "units": 3, "subject": "CCS 3" },
    { "units": 3, "subject": "InfoSys 12" },
    { "units": 3, "subject": "CHS 2" },
    { "units": 3, "subject": "GE 1" },
    { "units": 3, "subject": "GE 7" },
    { "units": 3, "subject": "GE 11A" },
    { "units": 2, "subject": "PE 2" },
    { "units": 0, "subject": "" },
  ],
  "bsissecondfirstSem": [
    { "units": 3, "subject": "InfoSys 21" },
    { "units": 3, "subject": "InfoSys 23" },
    { "units": 3, "subject": "InfoSys 25" },
    { "units": 3, "subject": "CCS 4" },
    { "units": 3, "subject": "GE 2" },
    { "units": 3, "subject": "GE 5" },
    { "units": 3, "subject": "CHS 3/GE 12" },
    { "units": 2, "subject": "PE 3" }
  ],
  "bsissecondsecondSem": [
    { "units": 3, "subject": "InfoSys 22" },
    { "units": 3, "subject": "InfoSys 24" },
    { "units": 3, "subject": "InfoSys 26" },
    { "units": 3, "subject": "CCS 5" },
    { "units": 3, "subject": "GE 3" },
    { "units": 3, "subject": "GE 8" },
    { "units": 3, "subject": "GE 9" },
    { "units": 2, "subject": "PE 4" }
  ],
  "bsisthirdfirstSem": [
    { "units": 3, "subject": "InfoSys 31" },
    { "units": 3, "subject": "InfoSys 33" },
    { "units": 3, "subject": "InfoSys 35" },
    { "units": 3, "subject": "InfoSys 37" },
    { "units": 3, "subject": "InfoSys E1" },
    { "units": 3, "subject": "CCS 6" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
  ],
  "bsisthirdsecondSem": [
    { "units": 3, "subject": "InfoSys 32" },
    { "units": 3, "subject": "InfoSys 34" },
    { "units": 3, "subject": "InfoSys 36" },
    { "units": 3, "subject": "InfoSys E2" },
    { "units": 3, "subject": "CCS 7" },
    { "units": 3, "subject": "CCS 8" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
  ],
  "bsisfourthfirstSem": [
    { "units": 3, "subject": "InfoSys 41" },
    { "units": 3, "subject": "InfoSys 43" },
    { "units": 3, "subject": "InfoSys 45" },
    { "units": 3, "subject": "InfoSys E3" },
    { "units": 3, "subject": "InfoSys E4" },
    { "units": 3, "subject": "CCS 6" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
  ],
  "bsisfourthsecondSem": [
    { "units": 6, "subject": "InfoSys 42" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
  ],
  "blisfirstfirstSem": [
    { "units": 3, "subject": "LibSci 11" },
    { "units": 3, "subject": "LibICT 11" },
    { "units": 3, "subject": "CHS 1" },
    { "units": 3, "subject": "GE 4" },
    { "units": 3, "subject": "GE 6" },
    { "units": 3, "subject": "GE 10A" },
    { "units": 2, "subject": "PE 1" },
    { "units": 0, "subject": "" },
  ],
  "blisfirstsecondSem": [
    { "units": 3, "subject": "LibSci 11" },
    { "units": 3, "subject": "LibSci 12" },
    { "units": 3, "subject": "CHS 2" },
    { "units": 3, "subject": "GE 1" },
    { "units": 3, "subject": "GE 7" },
    { "units": 3, "subject": "GE 11A" },
    { "units": 2, "subject": "PE 2" },
    { "units": 0, "subject": "" },
  ],
  "blissecondfirstSem": [
    { "units": 3, "subject": "LibSci 21" },
    { "units": 3, "subject": "LibSci 23" },
    { "units": 3, "subject": "LibICT 21" },
    { "units": 3, "subject": "LibICT 23" },
    { "units": 3, "subject": "GE 2" },
    { "units": 3, "subject": "GE 5" },
    { "units": 3, "subject": "CHS 3/GE 12" },
    { "units": 2, "subject": "PE 3" }
  ],
  "blissecondsecondSem": [
    { "units": 3, "subject": "LibSci 22" },
    { "units": 3, "subject": "LibSci 24" },
    { "units": 3, "subject": "LibSci 26" },
    { "units": 3, "subject": "LibSci 28" },
    { "units": 3, "subject": "GE 3" },
    { "units": 3, "subject": "GE 8" },
    { "units": 3, "subject": "GE 9" },
    { "units": 2, "subject": "PE 4" }
  ],
  "blisthirdfirstSem": [
    { "units": 3, "subject": "LibSci 31" },
    { "units": 3, "subject": "LibSci 33" },
    { "units": 3, "subject": "LibSci 35" },
    { "units": 3, "subject": "LibSci 37" },
    { "units": 3, "subject": "LibSci 39" },
    { "units": 3, "subject": "LibICT 31" },
    { "units": 3, "subject": "LibICT 33" },
    { "units": 0, "subject": "" },
  ],
  "blisthirdsecondSem": [
    { "units": 3, "subject": "LibSci 32" },
    { "units": 3, "subject": "LibSci 34" },
    { "units": 3, "subject": "LibSci 36" },
    { "units": 3, "subject": "Libsci 38" },
    { "units": 3, "subject": "LibICT 32" },
    { "units": 3, "subject": "LibICT 34" },
    { "units": 3, "subject": "CCS 7" },
    { "units": 0, "subject": "" },
  ],
  "blisfourthfirstSem": [
    { "units": 3, "subject": "LibSci 41" },
    { "units": 3, "subject": "LibSci 43" },
    { "units": 3, "subject": "LibSci 45" },
    { "units": 3, "subject": "LibSci 47" },
    { "units": 3, "subject": "FL" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
  ],
  "blisfourthsecondSem": [
    { "units": 6, "subject": "LibSci 42" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
    { "units": 0, "subject": "" },
  ]
};

class _QPAPageState extends State<QPAPage> {
  String course = courses[0], yearlevel = yearlevels[0], sem = semesters[0];
  final subjects = [TextEditingController(), TextEditingController(), TextEditingController(), TextEditingController(), TextEditingController(), TextEditingController(), TextEditingController(), TextEditingController()]; 
  final qpa = TextEditingController(text: "0.0");
  List<double> units = [3.0, 3.0, 3.0, 3.0, 3.0, 3.0, 3.0, 3.0] as List<double>;
  List<double> grade = [4.0, 4.0, 4.0, 4.0, 4.0, 4.0, 4.0, 4.0] as List<double>;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryCol,
        leading: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          }, 
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: primaryCol
          ),
          child: Icon(Icons.arrow_back, size: 30, color: lightGray)
        )
      ),
      body: ListView(
        padding: EdgeInsets.all(5),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Builder(builder: (context) {
                  return ListView.builder(
                    padding: EdgeInsets.all(0),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: courses.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        contentPadding: EdgeInsets.all(0),
                        title: Text(courses[index], style: TextStyle(
                          fontSize: 12
                        )),
                        leading: Radio(
                          value: courses[index],
                          groupValue: course,
                          onChanged: (value) {
                            setState(() {
                              course = value.toString();
                            });
                          }
                        )
                      );
                    },
                  );
                },),
              ),
              Expanded(
                child: Builder(builder: (context) {
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: yearlevels.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        contentPadding: EdgeInsets.all(0),
                        title: Text(yearlevels[index], style: TextStyle(
                          fontSize: 12
                        )),
                        leading: Radio(
                          value: yearlevels[index],
                          groupValue: yearlevel,
                          onChanged: (value) {
                            setState(() {
                              yearlevel = value.toString();
                            });
                          }
                        )
                      );
                    },
                  );
                },),
              ),
              Expanded(
                child: Builder(builder: (context) {
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: semesters.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        contentPadding: EdgeInsets.all(0),
                        title: Text(semesters[index], style: TextStyle(
                          fontSize: 12
                        )),
                        leading: Radio(
                          value: semesters[index],
                          groupValue: sem,
                          onChanged: (value) {
                            setState(() {
                              sem = value.toString();
                            });
                          }
                        )
                      );
                    },
                  );
                },),
              )
            ],
          ),
          Row(children: [Expanded(child: Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  String combination = "";
                  switch(course) {
                    case "Computer Science":
                      combination = "${combination}compsci";
                    case "Information Technology":
                      combination = "${combination}infotech";
                    case "Information Systems":
                      combination = "${combination}bsis";
                    case "Library Information Science":
                      combination = "${combination}blis";
                    default:
                      combination = "";
                  }
                  switch(yearlevel) {
                    case "First Year":
                      combination = "${combination}first";
                    case "Second Year":
                      combination = "${combination}second";
                    case "Third Year":
                      combination = "${combination}third";
                    case "Fourth Year":
                      combination = "${combination}fourth";
                    default:
                      combination = "";
                  }
                  switch(sem) {
                    case "First Semester":
                      combination = "${combination}firstSem";
                    case "Second Semester":
                      combination = "${combination}secondSem";
                    default:
                      combination = "";
                  }
                  for(int i = 0; i < 8; i++) {
                    subjects[i].text = curriculum[combination]?[i]["subject"];
                    //units[i] = curriculum[combination]?[i]["units"].toDouble();
                  }
                },
                child: Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: mainGray,
                    borderRadius: BorderRadius.circular(6)
                  ),
                  child: Center(child: Text("Fill", style: TextStyle(color: Colors.white, fontSize: 22)))
                ),
              ),
              GestureDetector(
                onTap: () {
                  for(int i = 0; i < 8; i++) {
                    subjects[i].text = "";
                  }
                },
                child: Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: mainGray,
                    borderRadius: BorderRadius.circular(6)
                  ),
                  child: Center(child: Text("Reset", style: TextStyle(color: Colors.white, fontSize: 22)))
                ),
              )
            ],
          ),)],),
          Divider(color: Colors.black),
          ListView.separated(
           itemCount: 8,
           shrinkWrap: true,
           physics: NeverScrollableScrollPhysics(),
           itemBuilder: (BuildContext context, int index) {
            return Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: lightGray
            ),
            child: Column(
            children: [
              Expanded(
                child: ListTile(
                  leading: Text("Subject ${index+1}:",
                    style: TextStyle(
                      fontSize: 15
                    )
                  ),
                  title: TextFormField(
                  controller: subjects[index],
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                )
                )
              ),
              ListTile(
                leading: Text("Units: ${units[index]}", style:TextStyle(
                  fontSize: 13
                )),
                title: Slider(
                  value: units[index],
                  max: 6.0,
                  divisions: 6,
                  label: units[index].round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      units[index] = value;
                    });
                  }
                ),
              ),
              ListTile(
                leading: Text("Grade: ${grade[index]}", style: TextStyle(
                  fontSize: 13
                ),),
                title: Slider(
                  value: grade[index],
                  max: 4.0,
                  divisions: 40,
                  label: grade[index].toString(),
                  onChanged: (double value) {
                    setState(() {
                      grade[index] = value;
                    });
                  }
                ),
              )
            ],)
          );
           },
           separatorBuilder: (context, index) => const SizedBox(height: 5,), 
          ),
          SizedBox(height:5),
          ElevatedButton(
            onPressed: () {
              double totalGrade = 0;
              double totalUnits = 0;
              for(int i = 0; i < 8; i++) {
                if(subjects[i].text == "" || subjects[i].text == null) {
                  units[i] = 0.0;
                } 
                totalGrade += units[i] * grade[i];
                totalUnits += units[i];
              }
              double result = totalGrade / totalUnits;
              qpa.text = result.toStringAsFixed(2);
            },
            style: ButtonStyle(
             
            ),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: darkBlue,
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
              child: Center(
                child: Text("CALCULATE QPA", style: TextStyle(color: lightGray, fontWeight: FontWeight.bold, fontSize: 20))
              )
            ),
          ),
          ListTile(
            leading: Text("QPA:",
              style: TextStyle(
                fontSize: 15
              )
            ),
            title: TextFormField(
            readOnly: true,
            controller: qpa,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),
          )
          )
        ],
      )
    );
  }
}