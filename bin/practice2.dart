import 'dart:io';
void main(List<String> arguments) {
  practice2();
}

void practice2(){
  //1. Write a dart program to check if the number is odd or even.
  stdout.write("Enter Number to check odd or even: ");
  int checkNum = int.parse(stdin.readLineSync()!);
  if(checkNum%2==0){
    print("$checkNum is Even number! \n");
  } else {
    print("$checkNum is Odd number! \n");
  }

  //2. Write a dart program to check whether a character is a vowel or consonant.
  List<String> vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', "I", 'O', 'U'];
  stdout.write("Please enter a character: ");
  String? getChar = stdin.readLineSync();

  if(vowels.contains(getChar)){
    print("You entered vowel. \n");
  } else {
    print("You entered consonant. \n");
  }

  //3. Write a dart program to check whether a number is positive, negative, or zero.
  stdout.write("Enter a number: ");
  double number = double.parse(stdin.readLineSync()!);

  switch (number) {
    case 0:
      print("You entered zero! \n");
      break;

    case <0:
      print("You entered negative number! \n");
      break;
    default: 
      print("You entered positive number! \n");
  }

  //4. Write a dart program to print your name 100 times.
  for(int x = 1; x <= 100; x++) {
    print("$x. Raven Antonio");
    if(x == 100) {
      print("");
    }
  }
  
  //5. Write a dart program to calculate the sum of natural numbers.
  int total = 0;
  int n = 100;
  int i =1;

  while(i<=n){
    total = total + i;
    i++;
  }
  
  print("Total is $total \n");

  //6. Write a dart program to generate multiplication tables of 5.
  stdout.write("Enter number from 1-5: ");
  int userNum = int.parse(stdin.readLineSync()!);

  if(userNum > 5 || userNum < 1) {
    print("Invalid number please enter 1-5 numbers only.");
  } else {
    for(int i=1; i<=userNum; i++){
        int ans = i*userNum;
        print("$userNum * $i = $ans");
      }
  }
   print("");

  

  //7. Write a dart program to generate multiplication tables of 1-9.
  stdout.write("Enter number from 1-9: ");
  int userNum2 = int.parse(stdin.readLineSync()!);

  if(userNum2 > 9 || userNum2 < 1) {
    print("Invalid number please enter 1-9 numbers only.");
  } else {
    for(int i=1; i<=userNum2; i++){
        int ans = i*userNum2;
        print("$userNum2 * $i = $ans");
      }
  }
   print("");

  //8. Write a dart program to create a simple calculator that performs addition, subtraction, multiplication, and division.
  stdout.write("Enter First Number: ");
  double calNum1 = double.parse(stdin.readLineSync()!);
  stdout.write("Enter Second Number: ");
  double calNum2 = double.parse(stdin.readLineSync()!);
  stdout.write("Enter Operator: ");
  String? operator = stdin.readLineSync();
  double calculated;
  
  switch (operator) {
    case "+":
      calculated = calNum1 + calNum2;
      print("$calNum1 + $calNum2 = $calculated");
      print("");
      break;

    case "-":
      calculated = calNum1 - calNum2;
      print("$calNum1 - $calNum2 = $calculated");
      print("");
      break;

    case "/":
      calculated = calNum1 / calNum2;
      print("$calNum1 / $calNum2 = $calculated");
      print("");
      break;

    case "*":
      calculated = calNum1 * calNum2;
      print("$calNum1 * $calNum2 = $calculated");
      print("");
      break;

    default:
      print("Invalid operator! \n");
  }


  //9. Write a dart program to print 1 to 100 but not 41.
  int numRange = 1;
  while (numRange <= 100) {
    if (numRange == 41) {
      numRange++;
      continue;
    }
    print(numRange);
    numRange++;
  }




}
