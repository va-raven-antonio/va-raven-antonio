import 'dart:math';

practice7(){
  lateVariables();
  nullableData();
  nullValue();
  printNullable(null);
  generateRandom();
}

//1. What is the purpose of the ? operator in Dart null safety?
// answer: to handle null value and if you are 100% sure to use it you can assign "?" to it without getting any error.

//2. Create a late variable named address, assign a US value to it and print it.
void lateVariables(){
  //late variable
  late String address;

  //late initializing
  address = "US";

  print(address);
}

//3. How do you declare a nullable type in Dart null safety?
//answer: by adding "?" after the data type of a variables here's the example
void nullableData(){
  //nullable variable
  String? nullText;

  nullText = "Displaying null-able variable";

  print(nullText);
}

//4. Write a program in a dart to create an age variable and assign a null value to it using ?.
void nullValue(){
  int? age;
  age = null;

  print(age);
}

//5. Write a function that accepts a nullable int parameter and returns 0 if the value is null using null coalescing operator ??.
void printNullable(int? age) {
  age = null;
  int age2 = age ?? 0; //setting coalescing operator if the value is null
  print(age2);
}

//6. Write a function named generateRandom() in dart that randomly returns 100 or null. Also, assign a return value of the function to a variable named status that can’t be null. Give status a default value of 0, if generateRandom() function returns null.
void generateRandom(){
  int? status;
  int? random = Random().nextBool() ? 100 : null;
  int? value = random;
  if(value == null){
    status = 0;
  } else {
    status = 100;
  }

  print("Status: $status");
  
}
