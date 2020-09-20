//
//  Menu.swift
//  AutomobileList
//
//  Created by Ruslan Abbasov on 16.09.2020.
//  Copyright © 2020 Ruslan Abbasov. All rights reserved.
//

import Foundation


class menu {
    
    // MARK: - Public Properties
    var counter:String? = ""
    
    // MARK: - Initializers
    
    init() {}
    
    // MARK: - Public Methods
    
    func printMenu() {
        print("What actions do want to perfrom on car list?\n")
        print("1 - Show all characteristics of car")
        print("2 - Add new car in list")
        print("3 - Delete car from list")
        print("4 - Edit information of car")
        print("5 - Show characteristics of all cars")
        print("exit - to close list and end work\n")
        print("Put your number: ")
    }
    
    
    func chooseAction(listOfCar:CarList) {
        
        counter = readLine()
        
        print("\n")
        
        switch counter {
        case "1":
            print("put number of car, that you want to see\n")
            let numOfCar = Int(readLine() ?? "1") ?? 1
            listOfCar.printAllCars()
            listOfCar.printCharactericstics(numberOfCar: numOfCar)
        case "2":
            listOfCar.addNewCar()
            listOfCar.printAllCars()
        case "3":
            print("put number of the car, that you want to delete from list")
            let numOfCar = Int(readLine() ?? "1") ?? 1
            listOfCar.printAllCars()
            listOfCar.deleteCar(numberOfCar: numOfCar)
            listOfCar.printAllCars()
        case "4":
            listOfCar.printAllCars()
            print("put number of the car, which iformation you want to edit")
            let numOfCar = Int(readLine() ?? "1") ?? 1
            listOfCar.editCarInfo(numberOfCar: numOfCar)
        case "5":
            listOfCar.printAllCars()
        case "exit":
            return
        default:
            print("you've put wrong nuber")
            return
        }
    }
    
    
}
