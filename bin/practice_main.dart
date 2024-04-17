import 'dart:io';
import 'package:myapp/display.dart';
import 'package:myapp/practice1.dart';
import 'package:myapp/practice2.dart';
import 'package:myapp/practice3.dart';
import 'package:myapp/practice4.dart';
import 'package:myapp/practice5.dart';
import 'package:myapp/practice6.dart';
import 'package:myapp/practice7.dart';
import 'package:myapp/practice8.dart';


void main(List<String> args) async {
  display();
  stdout.write("Select Practice[1-8]: ");
  int? practice = int.parse(stdin.readLineSync()!);
  switch (practice) {
    case 1:
      {
        practice1();
      }
    case 2:
      {
        practice2();
      }
    case 3:
      {
        practice3();
      }
    case 4:
      {
        practice4();
      }
    case 5:
      {
        practice5();
      }
    case 6:
      {
        practice6();
      }
    case 7:
      {
        practice7();
      }
    case 8:
      {
        practice8();
      }
  }
}