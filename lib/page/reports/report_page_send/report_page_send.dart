import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../report_page_send_home/report_page_send_home.dart';

class ReportPageSend extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ReportPageSendState();
}

class ReportPageSendState extends State<ReportPageSend> {
  String? _dropdownValue;
  String _value = "سیر";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.pushNamed(context, '/ReportPageSendHome');
          //_displayDialog(context);
          showInformationDialog(context);
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
    );
  }



  Future<void> showInformationDialog(BuildContext context) async {
return await showDialog(
    context: context,
    builder: (context) {
      bool isChecked = false;
      return StatefulBuilder(builder: (context, setState) {
        return AlertDialog(
           content: Column(
                //mainAxisSize: MainAxisSize.max,
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
                ],
              ),
             
        );
      });
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
