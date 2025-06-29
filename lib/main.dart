import 'package:computerstudiessociety/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:computerstudiessociety/pages/login.dart';
import 'package:computerstudiessociety/pages/colors.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase/src/supabase_client.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://vdoyevekihtqyhdzwhjx.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZkb3lldmVraWh0cXloZHp3aGp4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDg5NjA1NTAsImV4cCI6MjA2NDUzNjU1MH0.5Pu6-MnGwhgcLxO5omZzGO4iZFvmoGa8t-xFBKL513k'
  );
  runApp(const MyApp());
}

final SupabaseClient supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.   
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CSS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryCol,
        sliderTheme: SliderThemeData(
          showValueIndicator: ShowValueIndicator.always,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 66, 66, 66)),
      ),
      home: SplashScreen(),
    );
  }
}