import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<StatefulWidget> createState() => TestState();
}

class TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      alignment: Alignment.center,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
     Text("ttttttttttttttt")
  ],
),
         
        ],
      )
        ,
    ) ,
    );
    
    
    
   
  }
  }