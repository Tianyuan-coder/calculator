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
  String lastButton = '';
  Brain myBrain = Brain();
  Operator myOperator = Operator.plus;
  double myDouble = 0.0;
  double myDouble2 = 0.0;
  double myDouble3 = 0.0;
  double result = 0.0;
  String display = '' ;

  void updateState (Operator opr) {
    print('Display: $display');
    if (display == ''){
      myDouble = 0.0 ;
    }
    else {
      myDouble = double.parse(display);
    }
    myOperator = opr;
    if (lastButton == 'Opr'){
      myBrain.replaceLastOpr(myOperator);
    }
    else if (myBrain.lastOperator == Operator.equal) {
      myBrain.addOpr(myOperator);
    }
    else {
      myBrain.addNumAndOpr(myDouble, myOperator);
    }
    display = '';
    lastButton = 'Opr';
  }

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
                            lastButton = 'AC';
                          });
                          print('clear');

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
                          lastButton = '+/-';
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
                          lastButton = '%';
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
                            updateState(Operator.division);
                          });
                          print('divide');
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
                          print('7');
                          setState(() {
                            display = display + '7';
                            lastButton = 'number';
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
                          print('8');
                          setState(() {
                            display = display + '8';
                            lastButton = 'number';
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
                          print('9');
                          setState(() {
                            display = display + '9';
                            lastButton = 'number';
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
                            updateState(Operator.multiply);
                          });
                          print('x');
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
                            lastButton = 'number';

                          });
                          print('4');
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
                            lastButton = 'number';
                          });
                          print('5');
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
                            lastButton = 'number';
                          });
                          print('6');
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
                            updateState(Operator.minus);
                            print('-');
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
                            lastButton = 'number';
                            print('1');
                          });
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
                            lastButton = 'number';
                            print('2');
                          });
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
                            lastButton = 'number';
                            print('3');
                          });
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
                            updateState(Operator.plus);
                            print('+');
                          });
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
                            lastButton = 'number';
                            print('0');
                          });


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
                            lastButton = 'number';
                            print('dot');
                          });
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
                            lastButton = '=';
                            print('=');
                          });
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
