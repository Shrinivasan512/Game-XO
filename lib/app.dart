import 'package:flutter/material.dart';
import 'package:game/Screen.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
       theme: ThemeData(
        brightness: Brightness.light,
       colorSchemeSeed: 
       const Color(0xff913175)
       ),

      darkTheme: ThemeData(
        brightness: Brightness.light,
        colorSchemeSeed:  const Color(0xff002B5B)
      ),
      
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
     home: Screen() 

    );
  }
}