import 'dart:ffi';
import 'dart:math';
import 'constant.dart';
import 'package:flutter/material.dart';

class Brain {

  List myDoubles = [1, 2, 3];
  List myOperators = [Operator.plus, Operator.plus, Operator.plus];
  int countDoubles = 0;
  int countOperators = 0;

  double getFinal () {
    double val = (countDoubles >= 1) ? myDoubles[0] : 0.0;
    return val;


  }

  void addNum(double num) {
    if (countDoubles < 3) {
      myDoubles[countDoubles] = num;
      countDoubles = countDoubles + 1;
    }
  }

  double Calculate(double num1, double num2, Operator opr){
    if (opr == Operator.plus){
      return num1 + num2 ;
    }
    else if (opr == Operator.minus){
      return num1 - num2 ;
    }
    else if (opr == Operator.multiply){
      return num1 * num2;
    }
    else if (opr == Operator.division){
      return num1 / num2 ;
    }
  }

  void addOpr(Operator opr){
    if (countOperators < 3) {
      myOperators[countOperators] = opr;
      countOperators = countOperators + 1;
    }

    if ( countDoubles == 1 ){
      return;
    }
    else if (countDoubles == 2){
      // n1 opr1 n2 opr2
      // if opr1 is * /, calcu
      if (myOperators[0] == Operator.multiply || myOperators[0] == Operator.division) {
        myDoubles[0] = Calculate(myDoubles[0], myDoubles[1], myOperators[0]);
        countDoubles = 1;
        myOperators[0] = myOperators[1];
        countOperators = 1;
        return;
      }
      // if opr2 is +/-, calculate n1 opr1 n2 ==> n1, reduce countDoubles to 1.
      // if opr2 is * /, do nothing.
      else if(myOperators[1] == Operator.plus || myOperators[1] == Operator.minus) {
        myDoubles[0] = Calculate(myDoubles[0], myDoubles[1], myOperators[0]);
        countDoubles = 1;
        myOperators[0] = myOperators[1];
        countOperators = 1;
        return;
      }
      else if(myOperators[1] == Operator.equal) {
        myDoubles[0] = Calculate(myDoubles[0], myDoubles[1], myOperators[0]);
        countDoubles = 1;
        myOperators[0] = myOperators[1];
        countOperators = 0;
        return;
      }
    }
    //n1 opr1 n2 opr2 n3 opr3
    //opr1 =  +/-
    //opr2 = * /
    else if (countDoubles == 3){
      myDoubles[1] = Calculate(myDoubles[1], myDoubles[2], myOperators[1]);
      //n1 opr1 n23 opr3
      countDoubles = 2;
      myOperators[1] = myOperators [2];
      countOperators = 2;
      if (myOperators[1] == Operator.plus || myOperators[1] == Operator.minus){
        myDoubles[0] = Calculate(myDoubles[0], myDoubles[1], myOperators[0]);
        //n123 opr3
        countDoubles = 1;
        myOperators[0] = myOperators[1];
        countOperators = 1;
      }
      else if(myOperators[1] == Operator.equal) {
        myDoubles[0] = Calculate(myDoubles[0], myDoubles[1], myOperators[0]);
        //n123 opr3
        countDoubles = 1;
        myOperators[0] = myOperators[1];
        countOperators = 1;
        return;
      }
    }
  }

  void addNumAndOpr (double num, Operator opr){
    addNum(num);
    addOpr(opr);
    return;
  }

  void reset(){
    countDoubles = 0;
    countOperators = 0 ;
  }
}

