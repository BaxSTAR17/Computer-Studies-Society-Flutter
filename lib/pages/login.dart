import 'package:flutter/material.dart';
import 'home.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  //int drawerMode = 0;

  @override
  Widget build(BuildContext logincontext) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey[700],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Logo"),
              SizedBox(
                width: 300,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Student ID', 
                    fillColor: Colors.blueGrey[100],
                    filled: true,
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(100)
                    )
                  ),
                )
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 300,
                height: 50,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password', 
                    fillColor: Colors.blueGrey[100],
                    filled: true,
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(100)
                    )
                  ),
                )
              ),
              SizedBox(height: 60),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage())
                  );
                },
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[800],
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  child: Center(
                    child: Text("Log In", style: TextStyle(color: Colors.blueGrey[100]))
                  )
                ),
              )
            ]
          )
        )
      ),
    );
  }
}