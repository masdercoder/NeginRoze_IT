import 'package:flutter/material.dart';
import 'package:neginroze/page/menu_home.dart';
import 'package:neginroze/page/reports/report_page/report_page.dart';
import 'package:neginroze/page/reports/report_page_send/report_page_send.dart';
//import 'package:neginroze/page/reports/report_page_send_home/report_page_send_home.dart';
//import 'package:neginroze/page/reports/report_page_send_home/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => const Directionality(
            textDirection: TextDirection.rtl, child: MenuHome()),
        "/ReportPage": (context) => Directionality(
            textDirection: TextDirection.rtl, child: ReportPage()),
        "/ReportPageSend": (context) => Directionality(
            textDirection: TextDirection.rtl, child: ReportPageSend()),
        //"/ReportPageSendHome": (context) =>  const Directionality( textDirection: TextDirection.rtl, child: ReportPageSendHome()),
        //"/Test": (context) =>   const Directionality( textDirection: TextDirection.ltr, child: Test()),
      },
    );
  }
}
