import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:lottie/lottie.dart';

class MenuHome extends StatefulWidget {
  const MenuHome({super.key});

  @override
  State<StatefulWidget> createState() => MenuHomeState();
}

class MenuHomeState extends State<MenuHome> {
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();

    // _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Masder'),
        actions: <Widget>[
          Column(
            children: <Widget>[
              Text(
                'مسعود رضائیان',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'مسعود رضائیان',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(5.0),

        child: GridView.count(
          crossAxisCount: 4,
          
          children: <Widget>[
            Container(
              child:Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [


                     InkWell(
                splashColor: Colors.black26,
                onTap: (){
                   Navigator.pushNamed(context, '/ReportPage');
                },
                child: 
                
                Ink.image(
                  image: AssetImage('assets/images/report_icon.png'),
                  width: 80.0,
                  height: 80.0,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 6,),
              Text('data'),
              SizedBox(height: 6,),
                  ],
                ),
              
              
              
              
            ),
          ],
        ),

        //  const ResponsiveGridList(
        //   horizontalGridMargin: 5,
        //   verticalGridMargin: 5,
        //   minItemWidth: 100,
        //   children:widgetList.map((String value){
        //     Container(
        //       child:
        //        InkWell(
        //         splashColor: Colors.black26,
        //         onTap:null,
        //         child:

        //          Ink.image(

        //           image: AssetImage('assets/cat.jpg',
        //               width: 110.0,
        //                height: 110.0,
        //                fit: BoxFit.cover,

        //                ),
        //                ),
        //        ),
        //     ),

        //   }
        // ),

        //  InkWell(
        //   splashColor: Colors.black26,
        //   onTap:null,
        //   child:
        //   Ink.image(image: AssetImage(''),),

        //   //  Ink.image(

        //   //   image: AssetImage('assets/cat.jpg',
        //   //       width: 110.0,
        //   //        height: 110.0,
        //   //        fit: BoxFit.cover,

        //   //        ),
        //   //        ),

        // ),

        // Lottie.asset(
        //         'assets/images/reporteicon.json',
        //         width: 200,
        //         height: 200,
        //         fit: BoxFit.fill,
        //         controller: _controller,
        //         onLoaded: (composition) {
        //           // Configure the AnimationController with the duration of the
        //           // Lottie file and start the animation.
        //           _controller
        //             ..duration = composition.duration
        //             ..forward();
        //         },
        //       ),

        //  List.generate(
        //   500,
        //   (index) => Container(
        //     color: Color.fromARGB(255-index, 113+index, 181, 245),
        //     child: Padding(
        //       padding: const EdgeInsets.all(32),
        //       child: Text(
        //         '$index',
        //         textAlign: TextAlign.center,
        //         style: const TextStyle(color: Colors.white),
        //       ),
        //     ),
        //   ),
        // ),

//  GridView.count(
//   crossAxisCount: 5,
//   mainAxisSpacing: 5.0,
//   crossAxisSpacing: 5.0,

//   children: <Widget>[
//     Container(
//       color:Colors.amber,
//     ),

//      Container(
//       color:Colors.cyan,
//     ),

//      Container(
//       color:Colors.teal,
//     ),

//      Container(
//       color:Colors.green,
//     ),

//      Container(
//       color:Color.fromARGB(255, 10, 155, 58),
//     ),

//      Container(
//       color:Color.fromARGB(255, 38, 12, 150),
//     ),
//   ],
//   ),
      ),
    );
  }
}
