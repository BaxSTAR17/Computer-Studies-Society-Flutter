import 'package:computerstudiessociety/pages/colors.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import '../main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'dart:async';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  //int drawerMode = 0;
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  void initState() {
    super.initState();
    // final StreamSubscription<AuthState> authListener = Supabase.instance.client.auth.onAuthStateChange.listen((event) {
    //   final session = event.session;
    //   if(session == null) { Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LogInPage())); }
    // });
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext logincontext) {
    return Scaffold(
      body: Container(
        color: secondaryCol,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Logo"),
              SizedBox(
                width: 300,
                height: 50,
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    labelText: 'SU Email', 
                    fillColor: lightGray,
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
                child: TextFormField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password', 
                    fillColor: lightGray,
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
                  try {
                    Supabase.instance.client.auth.signInWithPassword(email: email.text.trim(),password: password.text);
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage())
                    );
                  } catch(error){
                    showDialog(context: context, builder: (context) {
                      return AlertDialog(
                          title: Text('ERROR'),
                          content: Text('$error')
                        );
                    });
                  }
                },
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    color: darkGray,
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  child: Center(
                    child: Text("Log In", style: TextStyle(color: lightGray))
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