import 'dart:io';

void practice1() {
  //1.Write a program to print your name.
  print("Raven"); 
  stdout.write("Raven");

  //2.Write a program to print Hello I am “John Doe” and Hello I’am “John Doe” with single and double quotes.
  print("Hello I am 'John Doe'");
  print("Hello I'am " '"John Doe"');

  //3.Declare constant type of int set value 7.
  const int number = 7;

  //4.Write a program in Dart that finds simple interest. Formula= (p * t * r) / 100
  int num1=5;
  int num2=10;
  int num3=15;
  double interest=(num1*num2*num3)/100;

  print("The simple interest is: $interest");

  //5.Write a program to print a square of a number using user input.
  stdout.write("Enter number: ");
  int inNumber = int.parse(stdin.readLineSync()!);
  inNumber*=inNumber;
  print("Square of a number is: $inNumber \n");

  //6.Write a program to print full name of a from first name and last name using user input.
  stdout.write("Enter First Name: ");
  String? fName = stdin.readLineSync();
  stdout.write("Enter Last Name: ");
  String? lName = stdin.readLineSync();
  print("Your Full Name: $fName $lName \n");

  //7. Write a program to find quotient and remainder of two integers.
  double num4=15;
  double num5=2;
  double quotient=num4/num5;
  double remainder=num4%num5;
  print("The quotient is: $quotient");
  print("The remainder is: $remainder \n");


  //8. Write a program to swap two numbers.
  int a=10;
  int b=20;
  int temp=0;
  print("Before swapping values are: $a $b");
  temp=a;
  a=b;
  b=temp;
  print("After swapping values are: $a $b \n");

  //9. Write a program in Dart to remove all whitespaces from String.
  stdout.write("Enter Strings with spaces: ");
  String str = stdin.readLineSync()!;
  String newStr = str.replaceAll(" ", "");
  print("The Strings you entered: $newStr \n");
  
  //10. Write a Dart program to convert String to int.
  stdout.write("Enter a String number: ");
  String? strValue = stdin.readLineSync();
  print("Type of strvalue is ${strValue.runtimeType}");
  int intValue = int.parse(strValue!);
  print("Type of intvalue is ${intValue.runtimeType} \n");


  //11. Suppose, you often go to restaurant with friends and you have to split amount of bill. Write a program to calculate split amount of bill. Formula= (total bill amount) / number of people
  double totalAmountBill;
  int headCount;
  double splitAmount;

  stdout.write("Enter Total Amount: ");
  totalAmountBill = double.parse(stdin.readLineSync()!); 
  stdout.write("Enter Number of People: ");
  headCount = int.parse(stdin.readLineSync()!);

  splitAmount = totalAmountBill/headCount;

  print("Amount of bill each person: $splitAmount \n");

  //12. Suppose, your distance to office from home is 25 km and you travel 40 km per hour. Write a program to calculate time taken to reach office in minutes. Formula= (distance) / (speed)
  double distance=25;
  double speed=40;
  double result = distance/speed;

  print("The result is: $result");
}
