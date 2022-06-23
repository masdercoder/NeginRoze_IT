import 'dart:io';

import 'package:flutter/material.dart';

class ReportPageSendHome extends StatefulWidget {
  const ReportPageSendHome({super.key});

  @override
  State<StatefulWidget> createState() => ReportPageSendHomeState();
}

class ReportPageSendHomeState extends State<ReportPageSendHome> {
  String? _dropdownValue;
  String _value="سیر";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children:<Widget>[
          Expanded(flex: 2,child: Container()),
          Expanded(flex: 6,child:  Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.blueAccent,
              margin: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 
                  Container(
                    padding: const EdgeInsets.only(right: 10),
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                      iconEnabledColor: Colors.indigo,
                      borderRadius: BorderRadius.circular(20),
                      alignment: Alignment.center,
                      icon: const Icon(Icons.train),
                      hint: const Text(
                        "انتخاب نوع قطار",
                        textAlign: TextAlign.center,
                      ),
                      dropdownColor: Colors.deepOrange,
                      items: const [
                        DropdownMenuItem<String>(
                          alignment: Alignment.center,
                          value: "1",
                          child: Text("قطار زندگی رام 1"),
                        ),
                        DropdownMenuItem<String>(
                          alignment: Alignment.center,
                          value: "2",
                          child: Text("قطار زندگی رام 2"),
                        ),
                        DropdownMenuItem<String>(
                          alignment: Alignment.center,
                          value: "3",
                          child: Text("قطار 5 ستاره زندگی رشت"),
                        ),
                        DropdownMenuItem<String>(
                          alignment: Alignment.center,
                          value: "4",
                          child: Text("قطار 4 ستاره رشت"),
                        ),
                        DropdownMenuItem<String>(
                          alignment: Alignment.center,
                          value: "5",
                          child: Text("قطار اصفهان 1"),
                        ),
                        DropdownMenuItem<String>(
                          alignment: Alignment.center,
                          value: "6",
                          child: Text("قطار اصفهان 2"),
                        ),
                      ],
                      value: _dropdownValue,
                      onChanged: dropdownCallback,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              color: Colors.deepOrange,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Text("سکو"),
                          Radio(
                            value: "سکو",
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value!;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Text("سیر"),
                          Radio(
                            value: "سیر",
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value!;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(5),
              // color:Color.fromARGB(255, 129, 131, 130),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      onPrimary: Colors.white,
                    ),
                    child: const Text("شروع"),
                  ),
                  const SizedBox(width: 10,),
                   ElevatedButton(
                     onPressed: (){},
                     style: ElevatedButton.styleFrom(
                       primary: Colors.redAccent,
                       onPrimary: Colors.white,
                     ),
                     child: const Text("برگشت"),
                   ),
                ],
              ),
            ),
          ],
        ),
       ),
          Expanded(flex: 2,child: Container()),
        ],
      ),
    );
  }


_displayDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: false,
      transitionDuration: Duration(milliseconds: 2000),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: ScaleTransition(
            scale: animation,
            child: child,
          ),
        );
      },
      pageBuilder: (context, animation, secondaryAnimation) {
        return SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: Center(
              child:Column(
                 mainAxisSize: MainAxisSize.min,
              children:<Widget> [
                Text('Hai This Is Full Screen Dialog', style: TextStyle(color: Colors.red, fontSize: 20.0),),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("DISMISS",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            ),
          ),
        );
      },
    );
  }


  String dropdownCallback(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        _dropdownValue = selectedValue;
      });
    }
    return "";
  }
}
