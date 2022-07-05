import 'package:flutter/material.dart';
import 'package:neginroze/page/reports/report_page_send/page.dart';
import 'package:neginroze/page/reports/report_page_send/report_page_send_models.dart';

class ReportPageSend extends StatefulWidget {
  const ReportPageSend({super.key});

  @override
  State<StatefulWidget> createState() => ReportPageSendState();
}

class ReportPageSendState extends State<ReportPageSend> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: ListView.builder(
        itemCount: 5,//count(),
        itemBuilder:

         (context, index)  {
 t();
return Text("data");



          // if( ReportPageSendModels.trainName[index].addDrop==true){
          // return Card(
          //   //margin: const EdgeInsets.all(10),
          //   child: ListTile(
          //     leading: const Icon(Icons.train_rounded),
          //     title: Text(
          //         ReportPageSendModels.trainName[index].nameTrain.toString()),
          //     subtitle:
          //         Text(ReportPageSendModels.trainName[index].model.toString()),
          //     dense: false,
          //     onTap: () {},
          //   ),
          // );
          // }else return const Text("ماموریت خود را شروع کنید");

        },

        //onTap: () {},
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateAndDisplay();
          //  PageHomeTrain().showInformationDialog(context);
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
    );
  }

  int count() {
    int a = 0;
    for (var i in ReportPageSendModels.trainName) {
      if (i.addDrop == true) a++;
    }
    return a;
  }

  _navigateAndDisplay() async {
    for (var i in ReportPageSendModels.trainName) {
      print("33=====> " + i.model.toString());
    }
    await PageHomeTrain().showInformationDialog(context);
    setState(() {});

    for (var i in ReportPageSendModels.trainName) {
      print("44=====> " + i.model.toString());
    }
   
  
  }
  
  Future t() async{
var result= ReportPageSendModels.trainName.where((element) => element.addDrop==true);

result.map((e) {
  return Card(
            //margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: const Icon(Icons.train_rounded),
              title: Text(
                 e.nameTrain.toString()),
              subtitle:
                  Text(e.model.toString()),
              dense: false,
              onTap: () {},
            ),
          );
});
  }
}
