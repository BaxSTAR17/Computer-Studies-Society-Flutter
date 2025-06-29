import 'package:computerstudiessociety/pages/colors.dart';
import 'package:computerstudiessociety/pages/home.dart';
import 'package:computerstudiessociety/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:computerstudiessociety/main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    sessionCheck();
  }

  Future<void> sessionCheck() async {
    try {
        await Future.delayed(Duration.zero);
        final session = Supabase.instance.client.auth.currentSession;

        if (!mounted) return;
        if(session == null) {  
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LogInPage())
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage())
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
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: primaryCol,
      body: Center(
        child:
          CircularProgressIndicator(color:mainBlue,),
      )
    );
  }
}