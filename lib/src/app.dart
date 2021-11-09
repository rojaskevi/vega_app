import 'package:flutter/material.dart';
import 'package:vega_app/src/pages/body_page.dart';


class MyApp extends StatelessWidget{
  @override
  Widget build(context){
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Center(      
      child:  ContadorPage(),
     )
   ); 
}
}