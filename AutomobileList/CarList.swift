//
//  CarList.swift
//  AutomobileList
//
//  Created by Ruslan Abbasov on 15.09.2020.
//  Copyright © 2020 Ruslan Abbasov. All rights reserved.
//

import Foundation

class CarList:Codable {
    
    // MARK: - Private Properties
    
    var carArray: [Automobile]
    
    // MARK: - Initializers
    
    init(carArray:Array<Automobile>) {
        self.carArray = carArray
    }
    
    // MARK: - Public Methods
    
    func printCharactericstics(numberOfCar: Int) {
        var numberOfCarInArray = numberOfCar - 1
        if carArray.capacity >= numberOfCar {
            print(numberOfCar,"." , carArray[numberOfCarInArray].brand, carArray[numberOfCarInArray].model, carArray[numberOfCarInArray].year, carArray[numberOfCarInArray].type,"\n")
        } else { print ("You've put wrong data, try again")}
    }
    
    func printAllCars() {
        for numberOfCarInArray in 1...carArray.count  {
            printCharactericstics(numberOfCar: numberOfCarInArray)
        }
    }
    
    func addNewCar() -> Bool {
        print("put car brand")
        let carBrand =  readLine()
        print("put car model")
        let carModel =  readLine()
        print("put car year")
        let carYear:Int? = Int(readLine()!)
        print("choose car type")
        printCarTypes()
        let typeOfBulk = chooseTypeOfBulk()
        if carBrand != "" || carModel != "" || carYear != nil {
            let car = Automobile(yearOfProducing: carYear!, carBrand: carBrand!, carModel: carModel!, typeOfCar: typeOfBulk!)
            carArray.append(car)
        } else { print("You've put wrong number, try again") }
        return true
    }
    
    func deleteCar(numberOfCar: Int) -> Bool {
        let numberOfCarInArray = numberOfCar - 1
        if carArray.capacity >= numberOfCar {
            carArray.remove(at: numberOfCarInArray)
        } else { print ("You've put wrong data, try again")}
        return true
    }
    
    func editCarInfo(numberOfCar: Int) -> Bool {
        if carArray.capacity >= numberOfCar {
        
        let numberOfCarInArray = numberOfCar - 1
        printAllChoices()
        
        if let counter  = Int(readLine()!) {
    
        switch counter {
        case 1:
            changeBrand(numberOfCar:numberOfCarInArray)
        case 2:
            changeModel(numberOfCar:numberOfCarInArray)
        case 3:
            changeYear(numberOfCar: numberOfCarInArray)
        case 4:
            changeCarType(numberOfCar: numberOfCarInArray)
        case 5:
            changeAll(numberOfCar:numberOfCarInArray)
        default:
            print("Put right number")
                }
            } else {print("You've put wrong number, try again")}
        } else {print("You've put wrong number, try again")}
        return true
        
    }
    
    
    
    
    
    // MARK: - Private Methods
    
    func printAllChoices () {
        print("Which characterics do you want to edit")
        print(" 1 - brand\n",
              "2 - model\n",
              "3 - year\n",
              "4 - type\n",
              "5 - all\n"
        )
    }
    
    func printCarTypes() {
        print(" 1 - Hatchback\n",
              "2 - Sedan\n",
              "3 - MUV\n",
              "4 - Coupe\n",
              "5 - Convertible\n",
              "6 - Wagon\n",
              "7 - Van\n",
              "8 - Jeep\n")
    }
    
    func changeBrand (numberOfCar:Int) {
        print("put car brand")
        let carBrand =  readLine()
        if carBrand != "" {
        carArray[numberOfCar].brand = carBrand!
        } else { print("You've put wrong data, try again") }
    }
    
    func changeModel(numberOfCar:Int) {
        print("put car model")
        let carModel =  readLine()
        if carModel != "" {
        carArray[numberOfCar].model = carModel!
        } else { print("You've put wrong data, try again") }
    }
    
    func changeYear (numberOfCar:Int) {
        print("put car year")
        let carYear = Int(readLine()!)
        if carYear != nil {
        carArray[numberOfCar].year = carYear ?? 2012
        } else { print("You've put wrong number, try again") }
    }
        
    
    func changeCarType(numberOfCar:Int) {
        print("choose car type")
        printCarTypes()
        print("Put your number:")
        chooseCarType(numberOfCar: numberOfCar)
    }
    
    func changeAll(numberOfCar:Int){
        changeBrand(numberOfCar:numberOfCar)
        changeModel(numberOfCar:numberOfCar)
        changeYear(numberOfCar: numberOfCar)
        changeCarType(numberOfCar: numberOfCar)
    }
    
    func chooseCarType(numberOfCar:Int) {
        let carType =  Int(readLine() ?? "1")
        
        switch carType {
        case 1:
            carArray[numberOfCar].type = Automobile.TypeOfBulk.Hatchback
        case 2:
            carArray[numberOfCar].type = Automobile.TypeOfBulk.Sedan
        case 3:
            carArray[numberOfCar].type = Automobile.TypeOfBulk.MUV
        case 4:
            carArray[numberOfCar].type = Automobile.TypeOfBulk.Coupe
        case 5:
            carArray[numberOfCar].type = Automobile.TypeOfBulk.Convertible
        case 6:
            carArray[numberOfCar].type = Automobile.TypeOfBulk.Wagon
        case 7:
            carArray[numberOfCar].type = Automobile.TypeOfBulk.Van
        case 8:
            carArray[numberOfCar].type = Automobile.TypeOfBulk.Jeep
        default:
            print("put right number")
        }
    }
    
    func chooseTypeOfBulk() -> Automobile.TypeOfBulk? {
        let carType =  Int(readLine() ?? "1")
        switch carType {
        case 1:
            return Automobile.TypeOfBulk.Hatchback
        case 2:
            return Automobile.TypeOfBulk.Sedan
        case 3:
            return Automobile.TypeOfBulk.MUV
        case 4:
            return Automobile.TypeOfBulk.Coupe
        case 5:
            return Automobile.TypeOfBulk.Convertible
        case 6:
            return Automobile.TypeOfBulk.Wagon
        case 7:
            return Automobile.TypeOfBulk.Van
        case 8:
            return Automobile.TypeOfBulk.Jeep
        default:
            print("put right number")
            return nil
        }
    }
    
    
    
}
