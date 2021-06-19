import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'brain.dart';
import 'constant.dart';

void main() {
  runApp(
      MyApp()
  );
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool isLastButtonOpr = false;

  Brain myBrain = Brain();
  Operator myOperator = Operator.plus;
  double myDouble = 0.0;
  double myDouble2 = 0.0;
  double myDouble3 = 0.0;
  double result = 0.0;
  String display = '' ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Expanded(
                child: Container(
                  color: Colors.grey[600],
                  child: Text(
                    '$display',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 60.0,
                    ),
                  ),
                ),
              ),


              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: FlatButton(
                        height: 100.0,
                        onPressed: () {
                          setState((){
                          display = '';
                          myBrain.reset();
                          });
                          print('reset');
                        },
                        color: Colors.grey,
                        child: Text('AC',
                          style: TextStyle(height: 1, fontSize: 25),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: FlatButton(
                        height: 100.0,
                        onPressed: () {
                          print('switch');
                          display = display + '+/-';
                        },
                        color: Colors.grey,
                        child: Text('+/-',
                          style: TextStyle(height: 1, fontSize: 25),),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: FlatButton(
                        height: 100.0,
                        onPressed: () {
                          print('percent');
                        },
                        color: Colors.grey,
                        child: Text('%',
                          style: TextStyle(height: 1, fontSize: 25),),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: FlatButton(
                        height: 100.0,
                        onPressed: () {
                          setState(() {
                            myDouble = double.parse(display);
                            myOperator = Operator.division;
                            display = '';
                            myBrain.addNumAndOpr(myDouble, myOperator);

                          });
                          //print('divide');
                        },
                        color: Colors.orange,
                        child: Text('/',
                          style: TextStyle(height: 1, fontSize: 25),),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: FlatButton(
                        height: 100.0,
                        onPressed: () {
                          //print('seven');
                          setState(() {
                            display = display + '7';

                          });
                        },
                        color: Colors.grey,
                        child: Text('7',
                          style: TextStyle(height: 1, fontSize: 25),),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: FlatButton(
                        height: 100.0,
                        onPressed: () {
                          //print('eight');
                          setState(() {
                            display = display + '8';
                          });
                        },
                        color: Colors.grey,
                        child: Text('8',
                          style: TextStyle(height: 1, fontSize: 25),),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: FlatButton(
                        height: 100.0,
                        onPressed: () {
                          //print('nine');
                          setState(() {
                            display = display + '9';

                          });
                        },
                        color: Colors.grey,
                        child: Text('9',
                          style: TextStyle(height: 1, fontSize: 25),),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: FlatButton(
                        height: 100.0,
                        onPressed: () {
                          setState(() {
                            myDouble = double.parse(display);
                            myOperator = Operator.multiply;
                            display = '';
                            myBrain.addNumAndOpr(myDouble, myOperator);

                          });
                          //print('x');
                        },
                        color: Colors.orange,
                        child: Text('x',
                          style: TextStyle(height: 1, fontSize: 25),),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: FlatButton(
                        height: 100.0,
                        onPressed: () {
                          setState(() {
                            display = display + '4';
                          });
                          //print('four');
                        },
                        color: Colors.grey,
                        child: Text('4',
                          style: TextStyle(height: 1, fontSize: 25),),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: FlatButton(
                        height: 100.0,
                        onPressed: () {
                          setState(() {
                            display = display + '5';
                          });
                          //print('five');
                        },
                        color: Colors.grey,
                        child: Text('5',
                          style: TextStyle(height: 1, fontSize: 25),),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: FlatButton(
                        height: 100.0,
                        onPressed: () {
                          setState(() {
                            display = display + '6';
                          });
                          //print('six');
                        },
                        color: Colors.grey,
                        child: Text('6',
                          style: TextStyle(height: 1, fontSize: 25),),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: FlatButton(
                        height: 100.0,
                        onPressed: () {
                          setState(() {
                            myDouble = double.parse(display);
                            myOperator = Operator.minus;
                            display = '';
                            myBrain.addNumAndOpr(myDouble, myOperator);
                          });
                        },
                        color: Colors.orange,
                        child: Text('-',
                          style: TextStyle(height: 1, fontSize: 25),),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: FlatButton(
                        height: 100.0,
                        onPressed: () {
                          setState(() {
                            display = display + '1';
                          });
                          //print('one');
                        },
                        color: Colors.grey,
                        child: Text('1',
                          style: TextStyle(height: 1, fontSize: 25),),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: FlatButton(
                        height: 100.0,
                        onPressed: () {
                          setState(() {
                            display = display + '2';
                          });
                          //print('two');
                        },
                        color: Colors.grey,
                        child: Text('2',
                          style: TextStyle(height: 1, fontSize: 25),),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: FlatButton(
                        height: 100.0,
                        onPressed: () {
                          setState(() {
                            display = display + '3';
                          });
                          //print('three');
                        },
                        color: Colors.grey,
                        child: Text('3',
                          style: TextStyle(height: 1, fontSize: 25),),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: FlatButton(
                        height: 100.0,
                        onPressed: () {
                          setState(() {
                            myDouble = double.parse(display);
                            myOperator = Operator.plus;
                            myBrain.addNumAndOpr(myDouble, myOperator);
                            display = '';
                          });
                          print(myDouble);
                          //print('plus');
                        },
                        color: Colors.orange,
                        child: Text('+',
                          style: TextStyle(height: 1, fontSize: 25),),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: FlatButton(
                        height: 100.0,
                        onPressed: () {
                          setState(() {
                            display = display + '0';
                          });
                          //print('zero');
                        },
                        color: Colors.grey,
                        child: Text('0',
                          style: TextStyle(height: 1, fontSize: 25),),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      flex: 1,
                      child: FlatButton(
                        height: 100.0,
                        onPressed: () {
                          setState(() {
                            display = display + '.';
                          });
                          //print('dot');
                        },
                        color: Colors.grey,
                        child: Text('.',
                          style: TextStyle(height: 1, fontSize: 25),),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      flex: 1,
                      child: FlatButton(
                        height: 100.0,
                        onPressed: () {
                          setState(() {
                            myDouble2 = double.parse(display);
                            myBrain.addNumAndOpr(myDouble2, Operator.equal);
                            result = myBrain.getFinal();
                            display = result.toString();


                          });
                          //print('=');
                        },
                        color: Colors.orange,
                        child: Text('=',
                          style: TextStyle(height: 1, fontSize: 25),),
                      ),
                    ),
                  ],
                ),
              ),
            ],),
        ),
      ),
    );
  }
}


// class MyApp extends StatelessWidget{
//   @override
//   String display = '' ;
//
//   Widget build(BuildContext context){
    // return  MaterialApp(
    //   home: Scaffold(
    //     backgroundColor: Colors.blueGrey,
    //     body: SafeArea(
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.stretch,
    //         mainAxisAlignment: MainAxisAlignment.start,
    //         children: [
    //
    //           Expanded(
    //               child: Container(
    //                 color: Colors.grey[600],
    //                 child: Text(
    //                     '$display',
    //                     textAlign: TextAlign.right,
    //                   style: TextStyle(
    //                     fontSize: 120.0,
    //                   ),
    //                   ),
    //               ),
    //             ),
    //
    //
    //           Expanded(
    //           child: Row(
    //             children: [
    //               Expanded(
    //                 child: FlatButton(
    //                   height: 100.0,
    //                   onPressed: () {
    //                     //setState((){
    //                     //display = display + 'AC';
    //                     //});
    //                     print('reset');
    //                   },
    //                   color: Colors.grey,
    //                   child: Text('AC',
    //                     style: TextStyle(height: 1, fontSize: 25),
    //                          ),
    //                        ),
    //                 ),
    //               SizedBox(
    //                 width: 10.0,
    //               ),
    //               Expanded(
    //                 child: FlatButton(
    //                   height: 100.0,
    //                   onPressed: () {
    //                     print('switch');
    //
    //                     display = display + '+/-';
    //                   },
    //                   color: Colors.grey,
    //                   child: Text('+/-',
    //                     style: TextStyle(height: 1, fontSize: 25),),
    //                 ),
    //               ),
    //               SizedBox(
    //                 width: 10.0,
    //               ),
    //               Expanded(
    //                 child: FlatButton(
    //                   height: 100.0,
    //                   onPressed: () {
    //                     print('percent');
    //                   },
    //                   color: Colors.grey,
    //                   child: Text('%',
    //                       style: TextStyle(height: 1, fontSize: 25),),
    //                 ),
    //               ),
    //               SizedBox(
    //                 width: 10.0,
    //               ),
    //               Expanded(
    //                 child: FlatButton(
    //                   height: 100.0,
    //                   onPressed: () {
    //                     print('divide');
    //                   },
    //                   color: Colors.orange,
    //                   child: Text('/',
    //                     style: TextStyle(height: 1, fontSize: 25),),
    //                 ),
    //               ),
    //             ],
    //           ),
    //           ),
    //
    //           Expanded(
    //             child: Row(
    //               children: [
    //                 Expanded(
    //                   child: FlatButton(
    //                     height: 100.0,
    //                     onPressed: () {
    //                       print('seven');
    //                       display = display + '7';
    //                     },
    //                     color: Colors.grey,
    //                     child: Text('7',
    //                       style: TextStyle(height: 1, fontSize: 25),),
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   width: 10.0,
    //                 ),
    //                 Expanded(
    //                   child: FlatButton(
    //                     height: 100.0,
    //                     onPressed: () {
    //                       print('eight');
    //                       display = display + '8';
    //                     },
    //                     color: Colors.grey,
    //                     child: Text('8',
    //                       style: TextStyle(height: 1, fontSize: 25),),
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   width: 10.0,
    //                 ),
    //                 Expanded(
    //                   child: FlatButton(
    //                     height: 100.0,
    //                     onPressed: () {
    //                       print('nine');
    //                       display = display + '9';
    //                     },
    //                     color: Colors.grey,
    //                     child: Text('9',
    //                       style: TextStyle(height: 1, fontSize: 25),),
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   width: 10.0,
    //                 ),
    //                 Expanded(
    //                   child: FlatButton(
    //                     height: 100.0,
    //                     onPressed: () {
    //                       print('x');
    //                     },
    //                     color: Colors.orange,
    //                     child: Text('x',
    //                       style: TextStyle(height: 1, fontSize: 25),),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //
    //           Expanded(
    //             child: Row(
    //               children: [
    //                 Expanded(
    //                   child: FlatButton(
    //                     height: 100.0,
    //                     onPressed: () {
    //                       print('four');
    //                     },
    //                     color: Colors.grey,
    //                     child: Text('4',
    //                       style: TextStyle(height: 1, fontSize: 25),),
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   width: 10.0,
    //                 ),
    //                 Expanded(
    //                   child: FlatButton(
    //                     height: 100.0,
    //                     onPressed: () {
    //                       print('five');
    //                     },
    //                     color: Colors.grey,
    //                     child: Text('5',
    //                       style: TextStyle(height: 1, fontSize: 25),),
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   width: 10.0,
    //                 ),
    //                 Expanded(
    //                   child: FlatButton(
    //                     height: 100.0,
    //                     onPressed: () {
    //                       print('six');
    //                     },
    //                     color: Colors.grey,
    //                     child: Text('6',
    //                       style: TextStyle(height: 1, fontSize: 25),),
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   width: 10.0,
    //                 ),
    //                 Expanded(
    //                   child: FlatButton(
    //                     height: 100.0,
    //                     onPressed: () {
    //                       print('-');
    //                     },
    //                     color: Colors.orange,
    //                     child: Text('-',
    //                       style: TextStyle(height: 1, fontSize: 25),),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Expanded(
    //             child: Row(
    //               children: [
    //                 Expanded(
    //                   child: FlatButton(
    //                     height: 100.0,
    //                     onPressed: () {
    //                       print('one');
    //                     },
    //                     color: Colors.grey,
    //                     child: Text('1',
    //                       style: TextStyle(height: 1, fontSize: 25),),
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   width: 10.0,
    //                 ),
    //                 Expanded(
    //                   child: FlatButton(
    //                     height: 100.0,
    //                     onPressed: () {
    //                       print('two');
    //                     },
    //                     color: Colors.grey,
    //                     child: Text('2',
    //                       style: TextStyle(height: 1, fontSize: 25),),
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   width: 10.0,
    //                 ),
    //                 Expanded(
    //                   child: FlatButton(
    //                     height: 100.0,
    //                     onPressed: () {
    //                       print('three');
    //                     },
    //                     color: Colors.grey,
    //                     child: Text('3',
    //                       style: TextStyle(height: 1, fontSize: 25),),
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   width: 10.0,
    //                 ),
    //                 Expanded(
    //                   child: FlatButton(
    //                     height: 100.0,
    //                     onPressed: () {
    //                       print('plus');
    //                     },
    //                     color: Colors.orange,
    //                     child: Text('+',
    //                       style: TextStyle(height: 1, fontSize: 25),),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //
    //       Expanded(
    //         child: Row(
    //           children: [
    //             Expanded(
    //               flex: 2,
    //               child: FlatButton(
    //                 height: 100.0,
    //                 onPressed: () {
    //                   print('zero');
    //                 },
    //                 color: Colors.grey,
    //                 child: Text('0',
    //                   style: TextStyle(height: 1, fontSize: 25),),
    //               ),
    //             ),
    //             SizedBox(
    //               width: 10.0,
    //             ),
    //             Expanded(
    //               flex: 1,
    //               child: FlatButton(
    //                 height: 100.0,
    //                 onPressed: () {
    //                   print('dot');
    //                 },
    //                 color: Colors.grey,
    //                 child: Text('.',
    //                   style: TextStyle(height: 1, fontSize: 25),),
    //               ),
    //             ),
    //             SizedBox(
    //               width: 10.0,
    //             ),
    //             Expanded(
    //               flex: 1,
    //               child: FlatButton(
    //                 height: 100.0,
    //                 onPressed: () {
    //                   print('=');
    //                 },
    //                 color: Colors.orange,
    //                 child: Text('=',
    //                   style: TextStyle(height: 1, fontSize: 25),),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //         ],),
    //     ),
    //   ),
    // );
//   }
// }
