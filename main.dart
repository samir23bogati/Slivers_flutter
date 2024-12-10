//import 'package:calculator/homepage.dart';
import 'package:calculator/components/list_screen.dart';

import 'package:flutter/material.dart';

void main(){
    runApp(MyApplication());

}

class MyApplication extends StatelessWidget{
    @override
    Widget build(BuildContext context){
     return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: false,
        ),
       
      home:ListScreen(),
     );

    }
}