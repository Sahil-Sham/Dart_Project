import 'dart:io';

import 'cms.dart';


void main(){ 
var carManagementSystem=CarManagementSystem();
  print("======= Welcome To My Project =======");
  var isContinue = true;
  while (isContinue) {
    print("==== Car Management System ====");
    print("Press 1 for Add Cars");
    print("Press 2 for List Cars");
    print("Press 3 for Remove Cars");
    print("Press 4 or any key to Exit");

    var userInput =int.parse( stdin.readLineSync()!);

    if (userInput == 1) {
      carManagementSystem.addCar();

    } else if (userInput == 2) {
     carManagementSystem.listCar();
     
    }else if (userInput == 3) {
     carManagementSystem.removeCar();
    }
     else  {
      print("Exiting");
      isContinue = false; 
    }
  }
}


