import 'dart:io';

import 'practice3.dart';
void main(List<String> arguments) {
   printNames();
   printFruits();
   printTotal();
   addDays();
   friendNames();
   mapInfo();
   createMap();
   toDo();
}

//1. Create a list of names and print all names using list.
printNames(){
  List<String> names = ["Tony", "Bruce", "Groot", "Thor"];
  print(names);
}


//2. Create a set of fruits and print all fruits using loop.
printFruits(){
  Set<String> fruits = {"Apple", "Grapes", "Strawberry", "Mango"};
  for (var fruits2 in fruits) {
    print(fruits2);
  }
}

//3. Create a program thats reads list of expenses amount using user input and print total.
printTotal(){
  List<double> expenses = [];
  double total=0;
  bool doAgain = true;
  do {
    stdout.write("Enter Amount: ");
    double amount = double.parse(stdin.readLineSync()!);
    expenses.add(amount);
    stdout.write("Do you want to continue?[Y/N]: ");
    String? str = stdin.readLineSync();
    if (str == "Y" || str == "y") {
      doAgain;
    } else {
      doAgain = false;
      //expenses.forEach((num e){total += e;});
      for (var i = 0; i < expenses.length; i++) {
        total += expenses[i];
      }
      print("Your total expenses is: $total");
      print(expenses);
    }
  } while (doAgain);
  
  
}


//4. Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.
addDays(){
  List<String> days = [];
  days.add("Monday");
  days.add("Tuesday");
  days.add("Wednesday");
  days.add("Thrusday");
  days.add("Friday");
  days.add("Saturday");
  days.add("Sunday");
  print(days);
}


//5. Add your 7 friend names to the list. Use where to find a name that starts with alphabet a.
friendNames(){
  List<String> names = [];
  names.add("Arianne");
  names.add("Gray");
  names.add("Allyssa");
  names.add("Mark");
  names.add("Arlie");
  names.add("Antoinette");
  names.add("Ellie");

  List<String> startsWith = names.where((element) => element.startsWith("A")).toList();
  print("names of friends: $names");
  print("names starts with letter 'A': $startsWith");
}

//6. Create a map with name, address, age, country keys and store values to it. Update country name to other country and print all keys and values.
mapInfo(){
  Map<String, String> userInfo = {
    'Name': 'Tony Stark',
    'Address': 'United States',
    'Age': '47', 
  };

  userInfo['Address'] = 'Washington, D.C.';
  print(userInfo);
  print("\n\n");
}

//7. Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.
createMap(){
  Map<String, String> userInfo = {
    'Name': 'Bruce Banner',
    'Phone': '09975883920',
    'Four': 'Test four'
  };

  userInfo.forEach((key, value) {
    if(key.length == 4){
      print(key);
    }
  });
}

//8. Create a simple to-do application that allows user to add, remove, and view their task.
List<String> task = []; //global declaration
toDo(){
  print("-----------------WELCOME TO MY TODO LIST------------------");
  print("                   Choose an option");
  print("[1]. Add Task");
  print("[2]. View Task");
  print("[3]. Remove Task");
  stdout.write("Input option [1-3]: ");
  String choice = stdin.readLineSync()!;
  switch (choice) {
    case "1": 
        {
          String addMore="";
          do {
            stdout.write("Add task note here: ");
            String addTask = stdin.readLineSync()!; 
            task.add(addTask);
            stdout.write("Successfully added, do you want to add more? [Y/N]: ");
            addMore = stdin.readLineSync()!;
            print("");
            print("--------------------Your Task List----------------------");
            print(task);
          } while (addMore == "y" || addMore == "Y");
          if (addMore == "n" || addMore == "N") {
            toDo();
          }
        }
    case "2": 
        {
          if (task.isEmpty) {
            print("                  **(List Empty)**");
            toDo();
          } else {
            int ctr=0;
            print("--------------------YOUR TASK LIST----------------------");
            for (var x=0; x < task.length; x++) {
              print("[${ctr+=1}]. ${task[x]}");
            }
            toDo();
          }
        }
    case "3": 
        {
          if (task.isNotEmpty) {
            int ctr=0;
            print("--------------------REMOVE TASK FROM YOUR TASK LIST----------------------");
            for (var x=0; x < task.length; x++) {
              print("[${ctr+=1}]. ${task[x]}");
            }
            stdout.write("Select task you want to remove: ");
            int removeTask = int.parse(stdin.readLineSync()!);
            task.removeAt(removeTask-1);
            print("Task removed successfully!");
            print("--YOUR CURRENT LIST--");
            print(task);
            stdout.write("Do you want to continue? [Y/N]: ");
            String? more = stdin.readLineSync();
            if (more == "y" || more == "Y") {
              toDo();
            } else {
              break;
            }
          } else {
            print("                  **(List Empty)**");
            toDo();
          }
          
        }    
      break;
    default:
  }

}


