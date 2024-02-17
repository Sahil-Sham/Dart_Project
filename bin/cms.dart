 import 'dart:io';

import 'cc.dart';

class CarManagementSystem{
  List<dynamic> cars=[];
  void addCar(){
    print("Enter the Car brand:");
    var brand=stdin.readLineSync();
    print("Enter the Car model:");
    var model=stdin.readLineSync();
    print("Enter the year:");
    var year=int.parse(stdin.readLineSync()!);
    var car=Car(brand,model,year);
    cars.add(car);
    print("Car Added Sucessfully!");
  }
  void listCar(){
    if (cars.isEmpty) {
      print("No Car Avaiable");
    }else{
      print("List of Car");
    for (var i = 0; i < cars.length; i++) {
      print("${i+1}.${cars[i].brand} ${cars[i].model} ${cars[i].year}");
    }
    }
  }
  void removeCar(){
    listCar();
    if (cars.isNotEmpty) {
      print("Enter the index to Remove Car");
    }var index=int.parse(stdin.readLineSync()!)-1;
    if (index >= 0 && index < cars.length) {
    var removeCar=cars.removeAt(index);
    print("Remove Car:${removeCar.brand} ${removeCar.model}");
  }else{
        print("Invaild index");
  }
  }
 }
