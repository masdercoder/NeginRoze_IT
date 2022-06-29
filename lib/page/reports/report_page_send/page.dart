import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:neginroze/page/reports/report_page_send/report_page_send.dart';
import 'package:neginroze/page/reports/report_page_send/report_page_send_models.dart';

class PageHomeTrain {
  // List<ReportPageSendModels> trainName = [
  //   ReportPageSendModels(
  //       nameTrain: "قطار زندگی رام 1", valueTrain: "1", addDrop: false),
  //   ReportPageSendModels(
  //       nameTrain: "قطار زندگی رام 2", valueTrain: "2", addDrop: false),
  //   ReportPageSendModels(
  //       nameTrain: "قطار 5 ستاره زندگی رشت", valueTrain: "3", addDrop: false),
  //   ReportPageSendModels(
  //       nameTrain: "قطار 4 ستاره رشت", valueTrain: "4", addDrop: false),
  //   ReportPageSendModels(
  //       nameTrain: "قطار اصفهان 1", valueTrain: "5", addDrop: false),
  //   ReportPageSendModels(
  //       nameTrain: "قطار اصفهان 2", valueTrain: "6", addDrop: false),
  // ];

  Future<void> showInformationDialog(BuildContext context) async {
    String? _dropdownValue;
    String _value = "سیر";
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
                          // iconEnabledColor: Colors.indigo,
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
                                  style: TextStyle(color: Colors.redAccent),
                                ),
                              );
                            } else {
                              return DropdownMenuItem(
                                enabled: true,
                                alignment: Alignment.center,
                                value: itemone.valueTrain,
                                child: Text(
                                  itemone.nameTrain.toString(),
                                  style: TextStyle(color: Colors.black),
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
                        onPressed: _dropdownValue == null && _value == null
                            ? null
                            : () {
                                print("=====>" + _value);
                                setState(() {
                                  ReportPageSendModels.trainName
                                      .asMap()
                                      .forEach((key, value) {
                                    if (value.valueTrain == _dropdownValue) {
                                      ReportPageSendModels
                                          .trainName[key].addDrop = true;
                                      //  ReportPageSendModels
                                      //.trainName[key].model = _value;
                                      _value == null
                                          ? ReportPageSendModels
                                              .trainName[key].model = "سیر"
                                          : ReportPageSendModels
                                              .trainName[key].model = _value;

                                      print("22=====>" + _value);
                                    }
                                  });
                                });
                                Navigator.pop(context);

                                ReportPageSendModels.trainName
                                    .asMap()
                                    .forEach((key, value) {
                                  print("## key:" +
                                      key.toString() +
                                      "  ## value:" +
                                      value.nameTrain.toString() +
                                      "  ## addDrop:" +
                                      value.addDrop.toString() +
                                      "  ## addmodel:" +
                                      value.model.toString());
                                });
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
