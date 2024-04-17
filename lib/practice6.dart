import 'dart:io';

practice6(){
  Camera cam1 = Camera();
    cam1.name = "DSLR";
    cam1.color = "Black";
    cam1.megapixel = 2.5;
    cam1.display();


    Camera cam2 = Camera();
    cam2.name = "Samsung";
    cam2.color = "Silver";
    cam2.megapixel = 2.0;
    cam2.display();

    Home home = Home();
    home.name = "Camelia";
    home.address = "Everywhere in Philippines";
    home.numberOfRooms = 2;
    home.display();

    print("");
    Patient patient = Patient(name: "Georgia", age: 22, disease: "Cancer");
    patient.display();

    print("");
    Person person = Person();
    person.name = "Gregor";
    print("Person Name: ${person.name}");
    print("Person planet: ${person.planet}");

    print("");
    Car car1 = Car("Ferrari", "Red", 2000000000.0);
    Car car2 = Car.namedCar("Porsche", "Black");

    car1.displayCar();
    car2.displayCar();
    print("");

    const Customer customer = Customer(name: "Raven", age: "22", phone: "0998588329");
    print("Customer name: ${customer.name}");
    print("Customer age: ${customer.age}");
    print("Customer phone: ${customer.phone}");

    CokeBottle bottle = CokeBottle();
    bottle.open();

    print("-------------Practice 6 Questions-----------------");
    Laptop laptop = Laptop();
    laptop.id = 25;
    laptop.name = "Lenovo";
    laptop.ram = 8;
    laptop.laptopDetails();

    print("");
    House house = House(22, "Camelia", 20000000000);
    house.printHouse();

    print("");
    EnumPrint printMe = EnumPrint();
    printMe.printDetails();

    print("");
    Cat cat = Cat(23, "Big", "Black/White", "Meaow");
    cat.displayCat();
    
    print("");
    Camera2 cam = Camera2(0, "Canon", "Silver", 25.000);
    cam.displayCamDetails();

    print("");
    Quiz quiz = Quiz();
    quiz.getCurrentQuestion();
}

//First challenge in OOP sections Practice6
class Book { //class
  String? name;  // Properties
  String? author;
  double? price;

  void display(){ // method
    print("Book Name: $name");
    print("Book author: $author");
    print("Book price: $price");
  }
}

//Second challenge in OOP sections - Class
class Camera{
  String? name;
  String? color; 
  double? megapixel;

  void display(){
    print("Camera name: $name");
    print("Camera color: $color");
    print("Camera megapixel: $megapixel");
  }
}

//Third challenge in OOP sections - Class
class Home{
  String? name;
  String? address;
  int? numberOfRooms;

  void display(){
    print("Home name: $name");
    print("Home address: $address");
    print("Home number of rooms: $numberOfRooms");
  }
}

//Fourth Challenge in OOP sections - Constructor
class Patient{
  String? name;
  int? age;
  String? disease;

  Patient({this.name, this.age, this.disease});

  void display(){
    print("Patient name: ${this.name}");
    print("Patient age: ${this.age}");
    print("Patient Disease: ${this.disease}");
  }
}

//5th Challenge in OOP sections - Default Constructor
class Person{
  String? name;
  String? planet;

  Person(){
    planet = "Earth";
  }
}

//6th Challenge in OOP section - Named Constructor
class Car{
  String? name;
  String? color;
  double? price;

  displayCar(){
    print("Car name: $name");
    print("Car color: $color");
    print("Car price: $price");
  }

  Car(this.name, this.color, this.price);

  Car.namedCar(this.name, this.color);

}

//7th Challeng in OOP Section - Constant Constructor
class Customer{
  final String? name;
  final String? age;
  final String? phone;

  const Customer({this.name, this.age, this.phone});


}

//question for practice - Factory Consctructor
abstract class Bottle {
  //factory constructor
  factory Bottle(){
    CokeBottle bottle = CokeBottle();
    return bottle;
  }

  //abstract method
  void open();
}

class CokeBottle implements Bottle {

  @override
  void open() {
    print("Coke bottle is opened");
  }
}


//1. Write a dart program to create a class Laptop with properties [id, name, ram] and create 3 objects of it and print all details.
class Laptop{
  //properties
  int? id;
  String? name;
  int? ram;


  //method
   void laptopDetails(){
    print("Laptop Id: $id");
    print("Laptop Name: $name");
    print("Laptop RAM: $ram");
   }


}

//2. Write a dart program to create a class House with properties [id, name, price]. Create a constructor of it and create 3 objects of it. Add them to the list and print all details.
class House{
  //properties
  int? id;
  String? name;
  double? price;

  //constructor
  House(this.id, this.name, this.price);

  void printHouse(){
    var houseList = [];
    houseList.add(id);
    houseList.add(name);
    houseList.add(price);
    print("House List: $houseList");
  }
}

//3. Write a dart program to create an enum class for gender [male, female, others] and print all values.
enum gender{
  male,
  female,
  others
}

class EnumPrint{
  var genderType = gender;

  void printDetails(){
    for (gender i in gender.values) {
      print(i);
    }
  }
}

//4. Write a dart program to create a class Animal with properties [id, name, color]. Create another class called Cat and extends it from Animal. Add new properties sound in String. Create an object of a Cat and print all details.
class Animal{
  int? id;
  String? name;
  String? color;

  Animal(this.id, this.name, this.color);
}

class Cat extends Animal {
  String? sound;

  Cat(int id, String name, String color, this.sound) : super(id, name, color);

  void displayCat(){
    print("Cat id: $id");
    print("Cat name: $name");
    print("Cat color: $color");
    print("Cat sound: $sound");
  }
}


//5. Write a dart program to create a class Camera with private properties [id, brand, color, price]. Create a getter and setter to get and set values. Also, create 3 objects of it and print all details.
class Camera2 {
  int? _id;
  String? _brand;
  String? _color;
  double? _price;

   Camera2(this._id, this._brand, this._color, this._price);
   //getter methods
   int get id => this._id!;
   String get brand => this._brand!;
   String get color => this._color!;
   double get price => this._price!;

  //setter methods
   set id(int id) => this._id = id;
   set brand(String brand) => this._brand = brand;
   set color(String color) => this._color = color;
   set price(double price) => this._price = price;

   displayCamDetails(){
    print("Camera id: $_id");
    print("Camera brand: $_brand");
    print("Camera color: $_color");
    print("Camera price: $_price");
   }
}

//6. Create an interface called Bottle and add a method to it called open(). Create a class called CokeBottle and implement the Bottle and print the message “Coke bottle is opened”. Add a factory constructor to Bottle and return the object of CokeBottle. Instantiate CokeBottle using the factory constructor and call the open() on the object.
abstract class Bottle2 {
  //factory constructor
  factory Bottle2(){
    CokeBottle2 bottle2 = CokeBottle2();
    return bottle2;
  }

  //abstract method
  void open();
}

class CokeBottle2 implements Bottle2 {

  @override
  void open() {
    print("Coke bottle is opened");
  }
}

//7. Create a simple quiz application using oop that allows users to play and view their score.
class Question {
  String strQuestion;
  bool answer;

  Question(this.strQuestion, this.answer);
}

class Quiz{
  int _score=0;
  int _wrongAnswer=0;

  //Set of questions
    final List<Question> _questions = [
    Question("Horse is known as the 'Ship of the Desert'?", false),
    Question("Do we have 8 days in a week?", false),
    Question("24 hours a total of one day",  true),
    Question("We have 27 letters in English Alphabet", false),
    Question("Rainbows consist with 8 colours", false),
    Question("365 days a total of 1 year.", true),
    Question("59 minutes is the total of 1 hour", false),
    Question("3000 seconds is the total of 1 hour", false),
    Question("60 seconds is the total of 2 hours", false),
    Question("Baby frog is known as bull frog", false)
    ];


    void getCurrentQuestion(){
      int? convertAnswer;
      bool userAnswer;
      for (var i = 0; i < _questions.length; i++) {
        print("[${i+1}]. ${_questions[i].strQuestion}"); //using interpolation to print (bad: 'Hello, ' + person.name + ' from ' + person.city + '.';)
        stdout.write("Please answer true[1] or false[2]: ");
        convertAnswer = int.parse(stdin.readLineSync()!);
        if (convertAnswer == 1) {
          userAnswer = true;
          if (userAnswer == _questions[i].answer) {
            _score++;
          } else {
            _wrongAnswer++;
          }
        } else if (convertAnswer == 2) {
          userAnswer = false;
          if (userAnswer == _questions[i].answer) {
            _score++;
          } else {
            _wrongAnswer++;
          }
        } else {
          print("Invalid answer, please input [1-2]");
          _wrongAnswer++;
        }
        print("");
      }
      if(_score > 5) {
        print("Congratulations for passing you got $_score correct answer and $_wrongAnswer wrong answer!");
      } else if (_score <= 5){
        print("Sorry you didn't reach the passing score you only got $_score correct answer and $_wrongAnswer wrong answer.");
      }
      
    }

}