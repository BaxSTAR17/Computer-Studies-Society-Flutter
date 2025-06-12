import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageNavigationState();
}

class _HomePageNavigationState extends State<HomePage> {
  int currentMode = 0;

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
          backgroundColor: Color.fromARGB(255, 78, 77, 77),
          child: ListView()
        ),
      );
    
  }
}