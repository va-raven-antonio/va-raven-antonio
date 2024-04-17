import 'dart:io';

practice5(){
  addName();
  appendNames();
  directory();
  copyFile();
  // for (var i = 0; i < 100; i++) {
  //   createFile("Created_File${i+1}.txt", "Hello World!");
  // }
  //deleteFile();
  students();
}

//1. Write a dart program to add your name to “hello.txt” file.
addName(){
  File file = File('C:\\Users\\Raven Antonio\\Desktop\\Dart\\myapp\\lib\\hello.txt');
  file.writeAsStringSync('Raven Antonio');
}

//2. Write a dart program to append your friends name to a file that already has your name.
appendNames(){
  File file = File('C:\\Users\\Raven Antonio\\Desktop\\Dart\\myapp\\lib\\hello.txt');
  file.writeAsStringSync('\nRaymark \nMark \nGray', mode: FileMode.append);
  print("Friends name successfully added!");
}

//3. Write a dart program to get the current working directory.
directory(){
  File file = File('C:\\Users\\Raven Antonio\\Desktop\\Dart\\myapp\\lib\\hello.txt');
  print('File current directory: ${file.absolute.path}');
}


//4. Write a dart program to copy the “hello.txt” file to “hello_copy.txt” file.
copyFile(){
  File file1 = File('C:\\Users\\Raven Antonio\\Desktop\\Dart\\myapp\\lib\\hello.txt');
  File file2 = File('C:\\Users\\Raven Antonio\\Desktop\\Dart\\myapp\\lib\\hello_copy.txt');
  String contents = file1.readAsStringSync();

  file2.writeAsStringSync(contents);
  print("Copied data successfully!");

}


//5. Write a dart program to create 100 files using loop.
Future createFile(String fileName, String text){
  return File(fileName).create()
  .then((File file){
    file.writeAsStringSync(text); //No two users can write simultaneously
    return 'The file has been created with "$text" as its content';
  });
}

//6. Write a dart program to delete the file “hello_copy.txt”. Make sure you have created the file “hello_copy.txt.
deleteFile(){
  for (var i = 0; i < 100; i++) {
    File file = File('Created_File${i+1}.txt');
    file.deleteSync();
  }
  print("Files are deleted!");
  
}

//7. Write a dart program to store name, age, and address of students in a csv file and read it.
students(){
  File file = File('C:\\Users\\Raven Antonio\\Desktop\\Dart\\myapp\\lib\\students.csv');
  file.writeAsStringSync('Name,Age,Address');
  for (var i = 0; i < 2; i++) {
    stdout.write("Enter name of student ${i + 1}: ");
    String? name = stdin.readLineSync();
    stdout.write("Enter age of student ${i + 1}: ");
    String? age = stdin.readLineSync();
    stdout.write("Enter address of student ${i + 1}: ");
    String? address = stdin.readLineSync();
    file.writeAsStringSync('$name,$age,$address\n', mode: FileMode.append);
  }
  print("Congratulations!! CSV file written successfully.");
  print("Here's the list of students: ");
  String contents = file.readAsStringSync();
  print(contents);
}