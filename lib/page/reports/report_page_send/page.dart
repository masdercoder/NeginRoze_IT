import 'package:flutter/material.dart';
import 'package:neginroze/page/reports/report_page_send/report_page_send_models.dart';

class PageHomeTrain {
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
                          dropdownColor: Colors.deepOrange,
                          items:
                              //  [
                              // DropdownMenuItem<ReportPageSendModels>(
                              //   value: trainName.valueTrain[],
                              //  ),
                              // ]

                              const [
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
                        onPressed: () {},
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
                        onPressed: () {},
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
