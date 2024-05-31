// Lesson 10: Object-Oriented Programming in Dart

// 🌟🌟🤔 What is Object-Oriented Programming (OOP)?🤔 🌟🌟
// Object-Oriented Programming (OOP) is a programming paradigm that revolves around the concept
// of objects. Objects are instances of classes, which encapsulate data and behavior. 
// OOP promotes modularity, reusability, and extensibility in software development.

// Classes and Objects in Dart 🏗️
// Classes:

// A class is a blueprint for creating objects.
// It defines the properties and behaviors that objects of the class will have.
// Syntax: class ClassName { /* members */ }
// Objects:

// Objects are instances of classes.
// They encapsulate data and provide methods to operate on that data.
// Syntax: ClassName objectName = ClassName();
// Constructors in Dart 🚧
// Default Constructor:

// Automatically provided by Dart if no constructor is explicitly defined.
// Syntax: ClassName();
// Parameterized Constructor:

// Allows initialization of object properties with values passed during object creation.
// Syntax: ClassName(parameters) { /* constructor body */ }
// Named Constructors:

// Provides alternative ways to construct objects with different configurations.
// Syntax: ClassName.constructorName(parameters) { /* constructor body */ }
// Inheritance in Dart 🏛️
// Inheritance:

// Allows a class to inherit properties and behavior from another class.
// Encourages code reuse and promotes the creation of hierarchical relationships between classes.
// Syntax: class SubClass extends SuperClass { /* members */ }
// Super Keyword:

// Used to refer to the superclass from within a subclass.
// Allows accessing superclass members and invoking superclass constructors.
// Syntax: super.memberName;

// Encapsulation in Dart 🔒
// Encapsulation:
// Encapsulation refers to the bundling of data and methods that operate on the data within a single unit.
// Helps in controlling access to data and prevents unintended modification.
// Achieved using access modifiers like public, private, and protected.

// Polymorphism in Dart 🎭
// Polymorphism:
// Allows objects to be treated as instances of their superclass, thereby promoting flexibility and reusability.
// Enables methods to behave differently based on the object that invokes them.
// Achieved through method overriding and method overloading.

// Abstraction in Dart 🎨
// Abstraction:
// Abstraction refers to the process of hiding complex implementation details and exposing only essential features.
// Helps in reducing complexity and focusing on relevant aspects of an object.
// Implemented using abstract classes and interfaces.

// Conclusion and Next Steps 🚀
// Object-Oriented Programming in Dart provides a powerful way to structure code, promote code reuse, and build scalable and maintainable applications. Understanding OOP principles and applying them effectively can greatly enhance the quality and efficiency of your Dart projects.




// THE DART DEMONSTRATION CODE

// Encapsulation
// Encapsulation refers to the bundling of data and methods that operate on the data within a single unit.
// It helps in controlling access to data and prevents unintended modification.

class Car {
  // Private members
  String _brand;
  int _price;

  // Constructor
  Car(this._brand, this._price);

  // Getter and Setter methods
  String get brand => _brand;
  set brand(String value) => _brand = value;

  int get price => _price;
  set price(int value) => _price = value;

  // Method
  void displayInfo() {
    print('Car: $_brand, Price: $_price');
  }
}

// Inheritance
// Inheritance allows a class to inherit properties and behavior from another class.
// It encourages code reuse and promotes the creation of hierarchical relationships between classes.

class ElectricCar extends Car {
  // Additional properties
  int _batteryLife;

  // Constructor
  ElectricCar(String brand, int price, this._batteryLife) : super(brand, price);

  // Method overriding
  @override
  void displayInfo() {
    super.displayInfo();
    print('Battery Life: $_batteryLife');
  }
}

// Polymorphism
// Polymorphism allows objects to be treated as instances of their superclass, promoting flexibility and reusability.
// It enables methods to behave differently based on the object that invokes them.

class Vehicle {
  void move() {
    print('Vehicle is moving.');
  }
}

class Bicycle extends Vehicle {
  @override
  void move() {
    print('Bicycle is moving.');
  }
}

// Abstraction
// Abstraction refers to the process of hiding complex implementation details and exposing only essential features.
// It helps in reducing complexity and focusing on relevant aspects of an object.

abstract class Shape {
  void draw();
}

class Circle extends Shape {
  @override
  void draw() {
    print('Drawing a circle.');
  }
}

void main() {
  // Encapsulation
  print('Encapsulation:');
  var car = Car('Toyota', 25000);
  car.displayInfo();

  // Inheritance
  print('\nInheritance:');
  var electricCar = ElectricCar('Tesla', 60000, 300);
  electricCar.displayInfo();

  // Polymorphism
  print('\nPolymorphism:');
  Vehicle vehicle = Bicycle();
  vehicle.move(); // Output: Bicycle is moving.

  // Abstraction
  print('\nAbstraction:');
  var circle = Circle();
  circle.draw();
}

// Code Explaination
// In this code:

// Encapsulation: The Car class encapsulates the brand and price of a car, providing getter and setter methods to access and modify these properties.

// Inheritance: The ElectricCar class inherits from the Car class, extending its functionality with an additional property for battery life.

// Polymorphism: The Bicycle class extends the Vehicle class and overrides its move() method to provide a specific behavior for bicycles. The Vehicle reference vehicle is polymorphic as it refers to a Bicycle object but invokes the move() method of the specific subclass.

// Abstraction: The Shape class is an abstract class defining a method draw(). The Circle class extends Shape and provides its implementation of the draw() method, hiding the details of how a circle is drawn.