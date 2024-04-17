// ignore_for_file: unused_local_variable

import 'dart:async';
import 'dart:io';

practice8() async {
  await getCurrentDate().then((value) => print(value));
  csvReader();
  var f = firstWait();
  var s = secondWait();
  var t = thirdWait();
  print(await f); //wait to complete others before printing all strings
  print(await s);
  print(await t);
  print('done');
  print(await sumOfTwo(20, 25)); //sum of two numbers
  print("The sum of two numbers from input is: ${await getTwoNum(0, 0)}");
  await userInputStrings();
  await displayNumbers();
  await getInput();
}
//1. Explain what is asynchronous programming in dart?
//answer: it is a process of something that is no need to wait the first process before the process for the second one
// the process will do multiple tasks at the same time.


//2. What is Future in dart?
//answer: It represents a value or error and something that is not yet available. 
//It is used to represent a potential value, or error, that will be available at some time in the future.

//3. Write a program to print current time after 2 seconds using Future.delayed().

Future<String> getCurrentDate() async{
  return Future.delayed(Duration(seconds: 2), () => '${DateTime.now()}');
}


//4. Write a program in dart that reads csv file and print it’s content.
void csvReader(){
  File file = File('C:\\Users\\Raven Antonio\\Desktop\\Dart\\myapp\\lib\\students.csv');
  String content = file.readAsStringSync();

  print(content);
}


//5. Write a program in dart that uses Future class to perform multiple asynchronous operations, wait for all of them to complete, and then print the results.
Future<String> firstWait() async{
  return Future.delayed(Duration(seconds: 2), () => "First String");
}

Future<String> secondWait() async{
  return Future.delayed(Duration(seconds: 2), () => "Second String");
}

Future<String> thirdWait() async{
  return Future.delayed(Duration(seconds: 2), () => "First String");
}

//6. Write a Dart program to calculate the sum of two numbers using async/await.
Future<int> sumOfTwo(int num1, int num2) async{
  int? n;
  return Future.delayed(Duration(seconds: 2), () => n = num1 + num2);
}

//7. Write a Dart program that takes in two integers as input, waits for 3 seconds, and then prints the sum of the two numbers.
Future<int> getTwoNum(int num1, int num2) async {
  int? total;

  stdout.write("Enter first number: ");
  num1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter second number: ");
  num2 = int.parse(stdin.readLineSync()!);
  var sum = await Future.delayed(Duration(seconds: 3), () => total = num1 + num2);

  return sum;
}


//8. Write a Dart program that takes a list of strings as input, sorts the list asynchronously, and then prints the sorted list.
Future<List<String>> sortStrings(List<String> strings) async {
 strings.sort();
 return strings;
}

Future<void> userInputStrings() async {
   List<String> strings = [];
  for (var i = 0; i < 5; i++) {
    stdout.write("Enter strings 5 times: ");
    String input = stdin.readLineSync()!;
    strings.add(input);
  }

  print("Original Strings: $strings");

  List<String> sortedList = await sortStrings(strings);

  print("Sorted Strings: $sortedList");
  
}

//9. Write a Dart program that takes a list of integers as input, multiplies each integer by 2 asynchronously, and then prints the modified list.
Future<List<int>> userInput() async {
  List<int> numbers = [];
  for (var i = 0; i < 5; i++) {
    stdout.write("Enter numbers to multiple by 2: ");
    int inputtedNumbers = int.parse(stdin.readLineSync()!);
    numbers.add(inputtedNumbers);
  }
  return numbers;
}

Future<List<int>> doubleIntegers(List<int> numbers) async {
  List<int> doubledNumbers = [];
  // Iterate through each number asynchronously 
  await Future.forEach(numbers, (int number) async {
    // Perform the multiplication asynchronously
    int doubledNumber = await Future.delayed(Duration(seconds: 1), () => number * 2);
    doubledNumbers.add(doubledNumber);
  });
  
  return doubledNumbers;
}
//display the doubled list the result for multiplied
Future<void> displayNumbers() async {
  List<int> numbers = await userInput();
  await doubleIntegers(numbers);

  print("Original List: $numbers");

  List<int> doubledList = await doubleIntegers(numbers);
  print('Doubled list: $doubledList');
}


//10. Write a Dart program that takes a string as input, reverses the string asynchronously, and then prints the reversed string.
Future<String> readInput() {
  var completer = Completer<String>();
  Future(() {
    var input = stdin.readLineSync();
    completer.complete(input);
  });
  return completer.future;
}

Future<String> reverseString(String input) {
  var completer = Completer<String>();
  Future(() {
    var reversedString = input.split('').reversed.join('');
    completer.complete(reversedString);
  });
  return completer.future;
}

Future<void> getInput() async {
  stdout.write('Enter a string: ');
  String input = await readInput(); // Wait for user input
  String reversedString = await reverseString(input); // Reverse the string
  print('Reversed string: $reversedString'); // Print the reversed strin
}