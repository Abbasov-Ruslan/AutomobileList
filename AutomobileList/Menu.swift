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
            listOfCar.printAllCars()
            if let numOfCar = Int(readLine()!) {
            listOfCar.printCharactericstics(numberOfCar: numOfCar)
            } else { print("You didn't put anu number, try again") }
        case "2":
            listOfCar.addNewCar()
            listOfCar.printAllCars()
        case "3":
            listOfCar.printAllCars()
            print("put number of the car, that you want to delete from list")
            if let numOfCar = Int(readLine()!) {
            listOfCar.deleteCar(numberOfCar: numOfCar)
            listOfCar.printAllCars()
            } else { print("You didn't put anu number, try again") }
        case "4":
            listOfCar.printAllCars()
            print("put number of the car, which iformation you want to edit")
            if let numOfCar = Int(readLine()!) {
            listOfCar.editCarInfo(numberOfCar: numOfCar)
            } else { print("You didn't put anu number, try again") }
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
