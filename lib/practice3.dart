import 'dart:math';

practice3(){
  getCube(2);
  print("The sum is ${add(5, 6)}");
  print("The division is ${div(1002, 3)}");
  print("My Name is: ${myName("Raven Antonio")}");
  getEven(1, 50);
  greet("John"); // here's the example of an argument.
  print("random passowrd: ${randomPassword(20)}");
  getArea(5, 3.14);
  reverse("Hello");
  print("The power is: ${(getPower(5))}");
  print("The sum is: ${add(5, 10)}");
  print("The largest number is: ${getMaxNum(1, 21, 60)}");
  print("Is Even?: ${isEven(11)}");
  createUser("Raven", 27, false);
  print("The are is: ${calculateArea(4, 4)}");
}


//practice3 (Challenge) Create a function that finds a cube of numbers.
void getCube(double num1){
  double result = num1 *= num1 *= num1;
  print("the cube is: $result");
}

int add(int num1, int num2) => num1 + num2; //get sum challenge using function
double div(int num1, int num2) => num1 / num2; //get quotient challenge using function

//1. Write a program in Dart to print your own name using function.
String myName(String name) => name;


//2. Write a program in Dart to print even numbers between intervals using function.
void getEven(int min, int max) {
  for(int even=min; even<=max; even++){
    if(even%2 == 0){
      print("The even numbers are: $even");
    }
  }
}

//3. Create a function called greet that takes a name as an argument and prints a greeting message. For example, greet(“John”) should print “Hello, John”.
void greet(String name){
  print("Hello, $name");
}

//4. Write a program in Dart that generates random password.
randomPassword(int length){
  List<String> result = [];
  const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
  const charLen = characters.length;
  var ctr=0;
  Random random = Random();

  while (ctr < length) {
    result.add(characters[random.nextInt(charLen)]);
    ctr++;
  }
  return result.join(); // to join all the characters inside the list displaying without brackets.
}

//5. Write a program in Dart that find the area of a circle using function. Formula: pi * r * r
double getArea(radius, pi){
  double result = pi * radius * radius;
  print("The area of the circle is: $result");

  return result;
}
  

//6. Write a program in Dart to reverse a String using function.
void reverse(String str) {
  String reverseString="";
  for(int x=str.length-1; x>=0; x--){ //loop iterates over the elements of str in reverse order, starting from the last element (str.length - 1) and ending with the first element (0).
      
      reverseString+=str[x];
  
  }
  print("The reverse is: $reverseString");
}

//7. Write a program in Dart to calculate power of a certain number. For e.g 5^3=125
int getPower(int num) => num * num * num; 

//8. Write a function in Dart named add that takes two numbers as arguments and returns their sum.
int getSum(int num1, int num2) => num1 + num2;

//9. Write a function in Dart called maxNumber that takes three numbers as arguments and returns the largest number.
int getMaxNum(int first, int second, int third) {
  int result=0;
  if (first > second && first > third) {
    result+=first;
  } else if(second > first && second > third) {
    result+=second;
  } else {
    result+=third;
  }
  return result;
}

//10. Write a function in Dart called isEven that takes a number as an argument and returns True if the number is even, and False otherwise.
bool isEven(int num) => num%2==0; 

//11. Write a function in Dart called createUser with parameters name, age, and isActive, where isActive has a default value of true.
createUser(String name, int age, bool isActive){
  isActive = true;
  print("Your name: $name");
  print("Your age: $age");
  print("Is Active: $isActive");
}

//12. Write a function in Dart called calculateArea that calculates the area of a rectangle. It should take length and width as arguments, with a default value of 1 for both. Formula: length * width.
double calculateArea(double length, double width){
  double result=0;
  
  result = (length + 1) * (width + 1);
  return result;
}