import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:neginroze/page/reports/report_page_send/report_page_send.dart';
import 'package:neginroze/page/reports/report_page_send/report_page_send_models.dart';

class PageHomeTrain {

  Future<void> showInformationDialog(BuildContext context) async {
    String? _dropdownValue;
    String _value = "سیر";
    String? _radioValue;
    return await showDialog(
      context: context,
      builder: (context) {
        bool isChecked = false;
        return StatefulBuilder(builder: (context, setState) {
          return AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  //color: Colors.blueAccent,
                  margin: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 10),
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton(
                          borderRadius: BorderRadius.circular(20),
                          alignment: Alignment.center,
                          icon: const Icon(Icons.train),
                          hint: const Text(
                            "انتخاب نوع قطار",
                            textAlign: TextAlign.center,
                          ),
                          dropdownColor: Colors.white,
                          items: ReportPageSendModels.trainName.map((itemone) {
                            print(itemone.addDrop);

                            if (itemone.addDrop == true) {
                              return DropdownMenuItem(
                                enabled: false,
                                alignment: Alignment.center,
                                value: itemone.valueTrain,
                                child: Text(
                                  itemone.nameTrain.toString(),
                                  style: const TextStyle(color: Colors.redAccent),
                                ),
                              );
                            } else {
                              return DropdownMenuItem(
                                enabled: true,
                                alignment: Alignment.center,
                                value: itemone.valueTrain,
                                child: Text(
                                  itemone.nameTrain.toString(),
                                  style: const TextStyle(color: Colors.black),
                                ),
                              );
                            }
                          }).toList(),

                          value: _dropdownValue,
                          onChanged: (v) {
                            setState(() {
                              _dropdownValue = v;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  // color: Colors.deepOrange,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Row(
                            children: [
                              const Text("سکو"),
                              Radio(
                                value: "سکو",
                                groupValue: _value,
                                onChanged: (value) {
                                  setState(() {
                                    _value = value!;
                                    _radioValue="سکو";
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
                              const Text("سیر"),
                              Radio(
                                value: "سیر",
                                groupValue: _value,
                                onChanged: (value) {
                                  setState(() {
                                    _value = value!;
                                     _radioValue="سیر";
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
                const SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(5),
                  // color:Color.fromARGB(255, 129, 131, 130),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.redAccent,
                          onPrimary: Colors.white,
                        ),
                        child: const Text("برگشت"),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: _dropdownValue == null 
                            ? null
                            : () {
                                print("=====>" + _radioValue.toString());
                                //setState(() {
                                  ReportPageSendModels.trainName
                                      .asMap()
                                      .forEach((key, value) {
                                    if (value.valueTrain == _dropdownValue) {
                                      ReportPageSendModels
                                          .trainName[key].addDrop = true;
                                    
                                      
                                      // _value == null
                                      //     ? ReportPageSendModels
                                      //         .trainName[key].model = "سیر"
                                           ReportPageSendModels
                                              .trainName[key].model = _radioValue;

                                      print("22=====>" + _radioValue.toString());
                                    }
                                  });
                                //});
                                Navigator.pop(context);

                             
                              },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          onPrimary: Colors.white,
                        ),
                        child: const Text("شروع"),
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
  }
