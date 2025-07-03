import 'package:computerstudiessociety/pages/colors.dart';
import 'package:flutter/material.dart';
import 'package:computerstudiessociety/main.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  int length = 0;

  @override
  Widget build(BuildContext context) {
    final eventdata = supabase.from('Event').select();
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: eventdata,
      builder: (BuildContext context, AsyncSnapshot<dynamic> promise) {
        if(promise.connectionState == ConnectionState.waiting) {
          return Scaffold(body: Center(child:CircularProgressIndicator(color: mainBlue)),);
        } else if(promise.hasData) {
          return Builder(
            builder: (context) {
              return ListView.separated(
                padding: const EdgeInsets.all(0),
                itemCount: promise.data!.length+1,
                itemBuilder: (BuildContext context, int index1) {
                  if(index1 == 0) {
                    return ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
                      children: [
                        Row(
                        children: [
                          Expanded(
                            child: TextButton(
                              
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(20)
                                ),  
                                foregroundColor: Colors.white,
                                textStyle: TextStyle(
                                  color:Colors.white
                                )
                              ),
                              onPressed: () {},
                              child: Column(children: [
                                Icon(Icons.person, size: 40),
                                const Text("Profile")
                              ],),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(20)
                                ),  
                                foregroundColor: Colors.white,
                                textStyle: TextStyle(
                                  color:Colors.white
                                )
                              ),
                              onPressed: () {},
                              child: Column(children: [
                                Icon(Icons.notifications, size: 40),
                                const Text("Notifications")
                              ],),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(20)
                                ),  
                                foregroundColor: Colors.white,
                                textStyle: TextStyle(
                                  color:Colors.white
                                )
                              ),
                              onPressed: () {},
                              child: Column(children: [
                                Icon(Icons.map, size: 40),
                                const Text("Map")
                              ],),
                            ),
                          )
                        ],),
                        SizedBox(height: 10,),
                        Row(
                        children: [
                          Expanded(
                            child: TextButton(
                              
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(20)
                                ),  
                                foregroundColor: Colors.white,
                                textStyle: TextStyle(
                                  color:Colors.white
                                )
                              ),
                              onPressed: () {},
                              child: Column(children: [
                                Icon(Icons.calculate, size: 30),
                                const Text("QPA Calc", softWrap: true,)
                              ],),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(20)
                                ),  
                                foregroundColor: Colors.white,
                                textStyle: TextStyle(
                                  color:Colors.white
                                )
                              ),
                              onPressed: () {},
                              child: Column(children: [
                                Icon(Icons.info, size: 30),
                                const Text("Information")
                              ],),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(20)
                                ),  
                                foregroundColor: Colors.white,
                                textStyle: TextStyle(
                                  color:Colors.white
                                )
                              ),
                              onPressed: () {},
                              child: Column(children: [
                                Icon(Icons.settings, size: 30),
                                const Text("Settings")
                              ],),
                            ),
                          )
                        ],)
                      ],
                    );
                  } else {
                    return FutureBuilder<List<Map<String, dynamic>>>(
                      future: supabase.from('Activity').select().eq('event_id', promise.data[index1-1]['event_id']),
                      builder: (BuildContext context, AsyncSnapshot<dynamic> actpromise) {
                        if(actpromise.connectionState == ConnectionState.waiting){
                          return Text("Loading...");
                        } else if(actpromise.hasData) {
                          return ListView.separated(
                            padding: EdgeInsets.all(5),
                            itemCount: actpromise.data!.length+1,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              if(index == 0) {
                                return Text(promise.data[index1-1]['event_name'], style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 30,
                                ));
                              } else {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, 
                                      MaterialPageRoute(
                                        builder: (context) => ActivityPage(data: actpromise.data[index-1])
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
                                          actpromise.data[index-1]['organizer'] == "College of Computer Studies" ? mainBlue : Colors.red.shade900
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
                                                Text(actpromise.data[index-1]['act_name'], style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  decoration: TextDecoration.underline,
                                                  fontSize: 20,
                                                )),
                                              ],
                                            ),
                                            Builder(
                                              builder: (context) {
                                                if(actpromise.data[index-1]['is_required'] == true) {
                                                  return Icon(Icons.error_outline, color: Colors.white,);
                                                } else { return Container(); }
                                              }
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Date & Time: ${actpromise.data[index-1]['act_date']}", style: TextStyle(
                                              fontSize: 14,
                                            )),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Venue: ${actpromise.data[index-1]['venue']}", style: TextStyle(
                                              fontSize: 14,
                                            )),
                                            Text("by ${actpromise.data[index-1]['organizer']}", style: TextStyle(
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
                          return Text("No events to show.");
                        }
                      }
                    );
                  }
                },
                  separatorBuilder: (BuildContext context, int index) => const Divider(
                    color: Colors.white
                  ),
                );
              }
          );
        } else {
          return Scaffold(body: Icon(Icons.signal_wifi_bad, color: mainGray, size: 40));
        }
      }
    );
  }
}

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key, required dynamic data});
  
  // ignore: recursive_getters
  get data => data;

  @override
  State<ActivityPage> createState() => _ActivityPageState(activity: data);
}

class _ActivityPageState extends State<ActivityPage> {
  _ActivityPageState({required dynamic activity});
  
  get activity => activity;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 84, 87, 93),
        leading: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          }, 
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: Color.fromARGB(255, 84, 87, 93)
          ),
          child: Icon(Icons.arrow_back, size: 30, color: Colors.blueGrey.shade100)
        )
      ),
      body: ListView(
        padding: EdgeInsets.all(5),
        children: [
          Text(activity['act_name'], style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          )),
          Divider(color: Colors.black),
          Text("Date of Event:"),
          Text("Time:"),
          Text("Venue of Event:"),
          Text("Organized by:"),
          Divider(color: Colors.black),
          // ElevatedButton(
          //   onPressed: () {},
          //   style: ElevatedButton.styleFrom(
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(7)
          //     ),
          //     padding: EdgeInsets.zero,
          //     backgroundColor: Color.fromARGB(255, 36, 45, 64)
          //   ),
          //   child: Text("Remind Me", style: TextStyle(
          //     color: Colors.white,
          //   ))
          // )
        ],
      )
    );
  }
}