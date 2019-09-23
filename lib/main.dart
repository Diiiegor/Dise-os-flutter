import 'package:disenos/src/pages/basico_page.dart';
import 'package:disenos/src/pages/botones_page.dart';
import 'package:disenos/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Estilos',
      debugShowCheckedModeBanner: false,
      initialRoute: 'basico',
      routes: {
        'basico':(BuildContext context)=>BasicoPage(),
        'scroll':(BuildContext context)=>ScrollPage(),
        'botones':(BuildContext context)=>BotonesPage(),
      },
    );
  }
}