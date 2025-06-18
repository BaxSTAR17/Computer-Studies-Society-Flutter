import 'package:flutter/material.dart';
import 'login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageNavigationState();
}

class _HomePageNavigationState extends State<HomePage> {
  int currentMode = 0, drawerMode = 0;

  @override
  Widget build(BuildContext homecontext) {
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
          backgroundColor: Color.fromARGB(255, 84, 87, 93),
          title: Center(
            child: Text(
              "Logo",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white
              ),
            ),
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
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) { setState(() { currentMode = index; }); },
          indicatorColor: Color.fromARGB(255, 131, 131, 131),
          selectedIndex: currentMode,
          backgroundColor: Color.fromARGB(255, 84, 87, 93),
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
              icon: Icon(Icons.map_outlined, color: Colors.white), 
              selectedIcon: Icon(Icons.map, color: Colors.white), 
              label: 'Map',
            ),
            NavigationDestination(
              icon: Icon(Icons.check_box_outlined, color: Colors.white), 
              selectedIcon: Icon(Icons.check_box, color: Colors.white), 
              label: 'Attendances',
            )
          ]
        ),
        drawer: Drawer(
          backgroundColor: Colors.blueGrey[800],
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
                                Container(width: 50, height: 50, decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.white)),
                                Text("Your Name & Profile Details", style: TextStyle(
                                  color: Colors.blueGrey[100],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                                ))
                              ],)
                            ),
                            Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[800],
                              border: Border(
                                top: BorderSide(width: 2, color: Colors.blueGrey),
                                bottom: BorderSide(width: 2, color: Colors.blueGrey)
                              )
                            ),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  SizedBox(width: 5),
                                  Icon(Icons.person, color: Colors.blueGrey[100]),
                                  Text("Profile", style: TextStyle(color: Colors.blueGrey[100],)),
                                ],
                              )
                            ),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[800],
                              border: Border(
                                bottom: BorderSide(width: 2, color: Colors.blueGrey)
                              )
                            ),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  SizedBox(width: 5),
                                  Icon(Icons.money, color: Colors.blueGrey[100]),
                                  Text("Balance", style: TextStyle(color: Colors.blueGrey[100],)),
                                ],
                              )
                            ),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[800],
                              border: Border(
                                bottom: BorderSide(width: 2, color: Colors.blueGrey)
                              )
                            ),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  SizedBox(width: 5),
                                  Icon(Icons.receipt, color: Colors.blueGrey[100]),
                                  Text("Transactions", style: TextStyle(color: Colors.blueGrey[100],)),
                                ],
                              )
                            ),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[800],
                              border: Border(
                                bottom: BorderSide(width: 2, color: Colors.blueGrey)
                              )
                            ),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  SizedBox(width: 5),
                                  Icon(Icons.notifications, color: Colors.blueGrey[100]),
                                  Text("Notifications", style: TextStyle(color: Colors.blueGrey[100],)),
                                ],
                              )
                            ),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[800],
                              border: Border(
                                bottom: BorderSide(width: 2, color: Colors.blueGrey)
                              )
                            ),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  SizedBox(width: 5),
                                  Icon(Icons.calculate, color: Colors.blueGrey[100]),
                                  Text("GPA Calculator", style: TextStyle(color: Colors.blueGrey[100],)),
                                ],
                              )
                            ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => LogInPage())
                              );
                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                              color: Colors.blueGrey[800],
                              border: Border(
                                bottom: BorderSide(width: 2, color: Colors.blueGrey)
                              )),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  SizedBox(width: 5),
                                  Icon(Icons.logout, color: Colors.blueGrey[100]),
                                  Text("Log Out", style: TextStyle(color: Colors.blueGrey[100],)),
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
                                color: Colors.blueGrey[800],
                                border: Border(
                                  top: BorderSide(width: 2, color: Colors.blueGrey),
                                  bottom: BorderSide(width: 2, color: Colors.blueGrey)
                                )),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    SizedBox(width: 5),
                                    Icon(Icons.settings, color: Colors.blueGrey[100]),
                                    Text("Settings", style: TextStyle(color: Colors.blueGrey[100],)),
                                  ],
                                )
                              ),
                            ),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                              color: Colors.blueGrey[800],
                              border: Border(
                                bottom: BorderSide(width: 2, color: Colors.blueGrey)
                              )),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  SizedBox(width: 5),
                                  Icon(Icons.info, color: Colors.blueGrey[100]),
                                  Text("Information", style: TextStyle(color: Colors.blueGrey[100],)),
                                ],
                              )
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
                          color: Colors.blueGrey,
                          border: Border(
                            bottom: BorderSide(width: 2, color: Colors.blueGrey)
                          )),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 10,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor: Colors.blueGrey,
                                ),
                                onPressed: () { setState(() { drawerMode = 0; }); }, 
                                child: Icon(Icons.arrow_back, color: Colors.blueGrey[100], size: 35)
                              ),
                            ],
                          )
                        )
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