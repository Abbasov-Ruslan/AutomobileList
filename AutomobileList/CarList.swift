//
//  CarList.swift
//  AutomobileList
//
//  Created by Ruslan Abbasov on 15.09.2020.
//  Copyright © 2020 Ruslan Abbasov. All rights reserved.
//

import Foundation

let markToy = Automobile(yearOfProducing: 2013, carBrand: "Toyota", carModel: "Mark", typeOfCar: Automobile.TypeOfBulk.Sedan)
   
   let suzuki = Automobile(yearOfProducing: 2013, carBrand: "Toyota", carModel: "Mark", typeOfCar: Automobile.TypeOfBulk.Sedan)
   
   let mark2 = Automobile(yearOfProducing: 2013, carBrand: "Toyota", carModel: "Mark", typeOfCar: Automobile.TypeOfBulk.Sedan)
   
   let carArray = [markToy, suzuki, mark2]
   
   let carList = CarList(carArray: carArray )


class CarList {
    
    // MARK: - Private Properties
    
    var carArray: [Automobile]
    
    // MARK: - Initializers
    
    init(carArray:Array<Automobile>) {
        self.carArray = carArray
    }
    
    // MARK: - Public Methods
    
    func printCharactericstics(numberOfCar: Int) {
        let numberOfCarInArray = numberOfCar - 1
        print(numberOfCar,"." , carArray[numberOfCarInArray].brand, carArray[numberOfCarInArray].model, carArray[numberOfCarInArray].year, carArray[numberOfCarInArray].type,"\n")
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
        let carYear = Int(readLine() ?? "2012")
        print("choose car type")
        printCarTypes()
        let typeOfBulk = chooseTypeOfBulk()
        let car = Automobile(yearOfProducing: carYear!, carBrand: carBrand!, carModel: carModel!, typeOfCar: typeOfBulk!)
        carArray.append(car)
        return true
    }
    
    func deleteCar(numberOfCar: Int) -> Bool {
        let numberOfCar = numberOfCar - 1
        carArray.remove(at: numberOfCar)
        return true
    }
    
    func editCarInfo(numberOfCar: Int) -> Bool {
        
        let numberOfCar = numberOfCar - 1
        printAllChoices()
        
        let counter  = Int(readLine() ?? "1")
        
        switch counter {
        case 1:
            changeBrand(numberOfCar:numberOfCar)
        case 2:
            changeModel(numberOfCar:numberOfCar)
        case 3:
            changeYear(numberOfCar: numberOfCar)
        case 4:
            changeCarType(numberOfCar: numberOfCar)
        case 5:
            changeAll(numberOfCar:numberOfCar)
        default:
            print("Put right number")
        }
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
        carArray[numberOfCar].brand = carBrand!
    }
    
    func changeModel(numberOfCar:Int) {
        print("put car model")
        let carModel =  readLine()
        carArray[numberOfCar].model = carModel!
    }
    
    func changeYear (numberOfCar:Int) {
        print("put car year")
        let carYear = Int(readLine() ?? "2012")
        carArray[numberOfCar].year = carYear ?? 2012
        
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
