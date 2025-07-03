import 'package:computerstudiessociety/pages/events.dart';
import 'package:computerstudiessociety/pages/colors.dart';
import 'package:flutter/material.dart';
import 'package:computerstudiessociety/main.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {

  @override
  Widget build(BuildContext context) {
    final attdata = supabase.from('Attendance').select(
      'Activity ()'
    ).eq('stud_id', supabase.auth.currentUser!.id);
    return FutureBuilder(
      future: attdata,
      builder: (BuildContext context, AsyncSnapshot<dynamic> response) {
        if(response.connectionState == ConnectionState.waiting) {
          return Scaffold(body: Center(child:CircularProgressIndicator(color: mainBlue)),);
        } else if(response.hasData && response.data.length != 0) {
          return ListView.separated(
            padding: EdgeInsets.all(5),
            itemCount: response.data.length+1,
            itemBuilder: (BuildContext context, int index) {
              if(index == 0) {
                return Text("Attended Activities", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ));
              } else {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, 
                      MaterialPageRoute(
                        builder: (context) => ActivityPage(data: response.data[index-1])
                      )
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: <Color>[
                          lightGray,
                          lightGray,
                          response.data[index-1]['organizer'] == "College of Computer Studies" ? mainBlue : Colors.red.shade900
                        ]
                      ),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    height: 80,
                    child: ListView(
                      padding: EdgeInsets.all(5),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              spacing: 10,
                              children: [
                                Text(response.data[index-1]['act_name'], style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  fontSize: 20,
                                )),
                                Text("(${response.data[index-1]['act_type']})", style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                )),
                              ],
                            ),
                            Builder(
                              builder: (context) {
                                if(response.data[index-1]['is_required'] == true) {
                                  return Icon(Icons.error_outline, color: Colors.white,);
                                } else { return Container(); }
                              }
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Date & Time: ${response.data[index-1]['act_date']}", style: TextStyle(
                              fontSize: 14,
                            )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Venue: ${response.data[index-1]['venue']}", style: TextStyle(
                              fontSize: 14,
                            )),
                            Text("by ${response.data[index-1]['organizer']}", style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            )),
                          ],
                        )
                      ],
                    )
                  ),
                );
              }
            },
            separatorBuilder: (BuildContext context, int index) => const SizedBox(
              height: 5
            ),
          );
        } else {
          return ListView.separated(
            padding: EdgeInsets.all(5),
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
                  if(index == 0) {
                    return Text("Attended Activities", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30,
                    ));
                  } else {
                    return Text("You haven't attended any activities", style: TextStyle(
                      color: Colors.white,
                    ));
                  }
            },
            separatorBuilder: (BuildContext context, int index) => const SizedBox(
              height: 5
            ),
          );
        }
      }
    );
  }
}