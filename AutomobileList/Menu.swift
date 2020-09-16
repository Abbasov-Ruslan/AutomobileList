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
    
    
    // MARK: - Initializers
    
    init() {}
    
    // MARK: - Public Methods
    
    func printMenu() {
        print("What actions do want to perfrom on car list?\n")
        print("1 - Show all characteristics of car")
        print("2 - Add car in list")
        print("3 - Delete car from list")
        print("4 - Edit car information")
        print("5 - Show all cars characteristics\n")
        print("Put your number: ")
    }
    
    
    func chooseAction(listOfCar:CarList) {
        
        let counter = Int(readLine() ?? "1")
        
        print("\n")
        
        switch counter {
        case 1:
            print("put number of car, that you want to see\n")
            let numOfCar = Int(readLine() ?? "1") ?? 1
            listOfCar.printCharactericstics(numberOfCar: numOfCar)
        case 2:
            listOfCar.addNewCar()
        case 3:
            print("put number of the car, that you want to delete from list")
            let numOfCar = Int(readLine() ?? "1") ?? 1
            listOfCar.deleteCar(numberOfCar: numOfCar)
        case 4:
            print("put number of the car, which iformation you want to edit")
            let numOfCar = Int(readLine() ?? "1") ?? 1
            listOfCar.editCarInfo(numberOfCar: numOfCar)
        case 5:
            listOfCar.printAllCars()
        default:
            print("you've put wrong nuber")
            return
        }
    }
    
    
}
