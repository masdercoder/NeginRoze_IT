import 'package:flutter/material.dart';
import 'package:neginroze/page/reports/report_page_send/page.dart';

class ReportPageSend extends StatefulWidget {
  const ReportPageSend({super.key});

  @override
  State<StatefulWidget> createState() => ReportPageSendState();
}

class ReportPageSendState extends State<ReportPageSend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black12,
      body: 
       ListView( 

        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: const Icon(Icons.train_rounded),
              title: const Text("MAsder"),
              subtitle: const Text("قطار زندگی مشهد"),
              dense: false,
              onTap: () {},
            ),
          ),
          //onTap: () {},
        ],
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          PageHomeTrain().showInformationDialog(context);
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
    );
  }
}
