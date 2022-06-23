import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReportPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ReportPageState();
}

class ReportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("گزارشات"),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
                //Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(5.0),
          child: GridView.count(
            crossAxisCount: 4,
            children: <Widget>[
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      splashColor: Colors.black26,
                      onTap: () {
                        Navigator.pushNamed(context, '/ReportPageSend');
                      },
                      child: Ink.image(
                        image: const AssetImage('assets/images/report_icon_send.png'),
                        width: 80.0,
                        height: 80.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text('ارسال گزارش'),
                    const SizedBox(
                      height: 6,
                    ),
                  ],
                ),
              ),
            Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      splashColor: Colors.black26,
                      onTap: () {
                        //Navigator.pushNamed(context, '/ReportPage');
                      },
                      child: Ink.image(
                        image: const AssetImage('assets/images/report_icon_inbox.png'),
                        width: 80.0,
                        height: 80.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text('دریافت گزارش'),
                    const SizedBox(
                      height: 6,
                    ),
                  ],
                ),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
