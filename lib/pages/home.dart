import 'package:computerstudiessociety/pages/about.dart';
import 'package:computerstudiessociety/pages/attendance.dart';
import 'package:computerstudiessociety/pages/colors.dart';
import 'package:computerstudiessociety/pages/courses.dart';
import 'package:computerstudiessociety/pages/events.dart';
import 'package:computerstudiessociety/pages/map.dart';
import 'package:computerstudiessociety/pages/payment.dart';
import 'package:computerstudiessociety/pages/qpa.dart';
import 'package:computerstudiessociety/main.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageNavigationState();
}

String userName = '';

class _HomePageNavigationState extends State<HomePage> {
  int currentMode = 0, drawerMode = 0;

  Future<void> initUser() async {
    try {
      if(supabase.auth.currentUser != null) {
        final dynamic user = await supabase.from('Student').select().eq('uuid', supabase.auth.currentUser!.id);
        userName = user[0]['stud_fname'];
      } else { userName = "NO USER"; }
    } catch(error) {
      setState(() {
        showDialog(context: context, builder: (context) {
        return AlertDialog(
            title: Text('ERROR'),
            content: Text('$error')
          );
      });
      });
    }
  }

  @override
  Widget build(BuildContext homecontext) {
      initUser();
      return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) {
              return GestureDetector(
                onTap: () { Scaffold.of(context).openDrawer(); },
                child: Container(
                  margin: EdgeInsets.all(5),
                  width: 29,
                  height: 29,
                  child: Icon(
                    Icons.menu,
                    size: 40,
                    color: Colors.white
                  ),
                )
              );
            }
          ),
          backgroundColor: mainBlue,
          title: Center(
            child: Image(
              image: AssetImage('assets/logo.png'),
              width: 50,
              height: 50
            )
          ),
          actions: [
            Container(
              margin: EdgeInsets.all(5),
              width: 39,
              height: 39,
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.white
              ),
            )
          ],
        ),
        body: Builder(builder: (BuildContext context) {
          if(currentMode == 0) {
            return EventsPage();
          } else if(currentMode == 2) {
            return MapPage();
          } else if(currentMode == 1) {
            return AttendancePage();
          } else { return Container(); }
        },),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) { setState(() { currentMode = index; }); },
          indicatorColor: mainGray,
          selectedIndex: currentMode,
          backgroundColor: darkGray,
          labelTextStyle: WidgetStateTextStyle.resolveWith(
            (Set<WidgetState> status) {
              final FontWeight selectionBold = status.contains(WidgetState.selected) ? FontWeight.bold : FontWeight.normal;
              return TextStyle(color: Colors.white, fontWeight: selectionBold);
            }
          ),
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.home_outlined, color: Colors.white), 
              selectedIcon: Icon(Icons.home, color: Colors.white), 
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.check_box_outlined, color: Colors.white), 
              selectedIcon: Icon(Icons.check_box, color: Colors.white), 
              label: 'Attendance',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outline, color: Colors.white), 
              selectedIcon: Icon(Icons.person, color: Colors.white), 
              label: 'Profile',
            )
          ]
        ),
        drawer: Drawer(
          backgroundColor: secondaryCol,
          child: 
          Builder(
            builder: (context) {
              switch(drawerMode) {
                case 0:
                  return Row(
                    children: [
                      Expanded(
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 100,
                              child: Row(
                                spacing: 10,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                SizedBox(width: 1),
                                Text(userName, style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25
                                ))
                              ],)
                            ),
                          Divider(color:lightGray),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context) => PaymentPage())
                              );
                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: secondaryCol,
                                border: Border(
                                  bottom: BorderSide(width: 2, color: mainGray)
                                )
                              ),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    SizedBox(width: 5),
                                    Icon(Icons.money, color: lightGray),
                                    Text("Payments", style: TextStyle(color: lightGray,)),
                                  ],
                                )
                              ),
                          ),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: secondaryCol,
                              border: Border(
                                bottom: BorderSide(width: 2, color: mainGray)
                              )
                            ),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  SizedBox(width: 5),
                                  Icon(Icons.notifications, color: lightGray),
                                  Text("Notifications", style: TextStyle(color: lightGray,)),
                                ],
                              )
                            ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context) => QPAPage())
                              );
                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: secondaryCol,
                                border: Border(
                                  bottom: BorderSide(width: 2, color: mainGray)
                                )
                              ),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    SizedBox(width: 5),
                                    Icon(Icons.calculate, color: lightGray),
                                    Text("QPA Calculator", style: TextStyle(color: lightGray,)),
                                  ],
                                )
                              ),
                          ),
                          GestureDetector(
                            onTap: () {
                              try {
                                Supabase.instance.client.auth.signOut();
                                if(supabase.auth.currentSession == null) {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => LogInPage())
                                  );
                                }
                              } catch(error) {
                                showDialog(context: context, builder: (context) {
                                  return AlertDialog(
                                      title: Text('ERROR'),
                                      content: Text('$error')
                                    );
                                });
                              }
                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                              color: secondaryCol,
                              border: Border(
                                bottom: BorderSide(width: 2, color: mainGray)
                              )),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  SizedBox(width: 5),
                                  Icon(Icons.logout, color: lightGray),
                                  Text("Log Out", style: TextStyle(color: lightGray,)),
                                ],
                              )
                            )
                          ),
                          Expanded(child: SizedBox()),
                            GestureDetector(
                              onTap: () {
                                setState(() { drawerMode = 1; });
                              },
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                color: secondaryCol,
                                border: Border(
                                  top: BorderSide(width: 2, color: mainGray),
                                  bottom: BorderSide(width: 2, color: mainGray)
                                )),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    SizedBox(width: 5),
                                    Icon(Icons.settings, color: lightGray),
                                    Text("Settings", style: TextStyle(color: lightGray,)),
                                  ],
                                )
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() { drawerMode = 2; });
                              },
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                color: secondaryCol,
                                border: Border(
                                  bottom: BorderSide(width: 2, color: mainGray)
                                )),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    SizedBox(width: 5),
                                    Icon(Icons.info, color: lightGray),
                                    Text("Information", style: TextStyle(color: lightGray,)),
                                  ],
                                )
                              ),
                            )
                          ])
                      ),
                    ],
                  );
                case 1:
                  return Row(children: [
                    Expanded(child: Column(
                      children: [
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                          color: mainGray,
                          border: Border(
                            bottom: BorderSide(width: 2, color: mainGray)
                          )),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 10,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor: mainGray,
                                ),
                                onPressed: () { setState(() { drawerMode = 0; }); }, 
                                child: Icon(Icons.arrow_back, color: lightGray, size: 35)
                              ),
                              Text("Settings", style: TextStyle(color: lightGray, fontSize: 25, fontWeight: FontWeight.bold))
                            ],
                          )
                        )
                      ],
                    ),)
                  ],);
                case 2:
                  return Row(children: [
                    Expanded(child: Column(
                      children: [
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                          color: mainGray,
                          border: Border(
                            bottom: BorderSide(width: 2, color: mainGray)
                          )),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 10,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor: mainGray,
                                ),
                                onPressed: () { setState(() { drawerMode = 0; }); }, 
                                child: Icon(Icons.arrow_back, color: lightGray, size: 35)
                              ),
                              Text("Information", style: TextStyle(color: lightGray, fontSize: 25, fontWeight: FontWeight.bold)),
                            ],
                          )
                        ),
                        GestureDetector(
                          onTap: () {
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context) => DevTeamPage())
                              );
                            },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: secondaryCol,
                              border: Border(
                                bottom: BorderSide(width: 2, color: mainGray)
                              )
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              spacing: 10,
                              children: [
                                SizedBox(width: 5),
                                Icon(Icons.code, color: lightGray),
                                Text("About the Dev Team", style: TextStyle(color: lightGray,)),
                              ],
                            )
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context) => CoursesPage())
                              );
                            },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: secondaryCol,
                              border: Border(
                                bottom: BorderSide(width: 2, color: mainGray)
                              )
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              spacing: 10,
                              children: [
                                SizedBox(width: 5),
                                Icon(Icons.menu_book, color: lightGray),
                                Text("CCS Programs", style: TextStyle(color: lightGray,)),
                              ],
                            )
                          ),
                        ),
                      ],
                    ),)
                  ],);
                default: 
                  return Text("Hello");
              }
            }
          )
          
        ),
      );
    
  }
}