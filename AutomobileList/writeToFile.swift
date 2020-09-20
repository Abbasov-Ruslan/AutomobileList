//
//  fileWrite.swift
//  AutomobileList
//
//  Created by Ruslan Abbasov on 17.09.2020.
//  Copyright © 2020 Ruslan Abbasov. All rights reserved.
//

import Foundation

final class File {
    
// MARK: - Initializers
    
    init() {}
    
// MARK: - Public Methods

func saveData(carArray:[Automobile]) {
    
    let file = "automobileArraySave.txt"
    
    if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
        
        let path = dir.appendingPathComponent(file)
        
        do {
            var summ = ""
            if carArray.count > 0{
                for car in carArray {
                    let brand = car.brand
                    let model = car.model
                    let year = String(car.year)
                    let typeOfBulk:String = carTypeToString(car: car)!
                    summ = summ + brand + " " + model + " " + year + " " + typeOfBulk + "\n"
                }
                summ.remove(at: summ.index(before: summ.endIndex))
                try summ.write(to: path, atomically: true, encoding: .utf8)
            } else{ try summ.write(to: path, atomically: true, encoding: .utf8)}
        } catch {/* error handling here */}
        
        
    }
}


func readData () -> [Automobile] {
    
    let file = "automobileArraySave.txt"
    var carArray:[Automobile] = []
    
    if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
        let path = dir.appendingPathComponent(file)
        
        
        
        do {
            let text2 = try String(contentsOf: path, encoding: .utf8)
            let result: [String] =  text2.components(separatedBy: ["\n"])
            for i in 0...result.count - 1 {
                let result2: [String] =  result[i].components(separatedBy: [" "])
                if result2[0]  != ""  {
                    let carFromFile = Automobile(yearOfProducing: Int(result2[2])!, carBrand: result2[0], carModel: result2[1], typeOfCar:
                        stringToType(str: result2[3])!)
                    carArray.append(carFromFile)
                } else {
                    carArray = [Automobile(yearOfProducing: 2019, carBrand: "Totyota", carModel: "GTR", typeOfCar: Automobile.TypeOfBulk.Sedan), Automobile(yearOfProducing: 2009, carBrand: "Totyota", carModel: "Granvia", typeOfCar: Automobile.TypeOfBulk.Van), Automobile(yearOfProducing: 2013, carBrand: "Totyota", carModel: "Pajero", typeOfCar: Automobile.TypeOfBulk.Jeep)]
                }
            }
        }
        catch {}
        
        
    }
    return carArray
    
}

// MARK: - Private Methods
    
private func carTypeToString(car:Automobile) -> String? {
    
    
    switch car.type {
    case Automobile.TypeOfBulk.Hatchback:
        return "Hatchback"
    case Automobile.TypeOfBulk.Sedan:
        return "Sedan"
    case Automobile.TypeOfBulk.MUV:
        return "MUV"
    case Automobile.TypeOfBulk.Coupe:
        return "Coupe"
    case Automobile.TypeOfBulk.Convertible:
        return "Convertible"
    case Automobile.TypeOfBulk.Wagon:
        return "Wagon"
    case Automobile.TypeOfBulk.Van:
        return "Van"
    case Automobile.TypeOfBulk.Jeep:
        return "Jeep"
    }
}


private func stringToType(str:String) -> Automobile.TypeOfBulk? {
    
    
    switch str{
    case "Hatchback":
        return Automobile.TypeOfBulk.Hatchback
    case "Sedan":
        return Automobile.TypeOfBulk.Sedan
    case "MUV":
        return Automobile.TypeOfBulk.MUV
    case "Coupe":
        return Automobile.TypeOfBulk.Coupe
    case "Convertible":
        return Automobile.TypeOfBulk.Convertible
    case "Wagon":
        return Automobile.TypeOfBulk.Wagon
    case "Van":
        return Automobile.TypeOfBulk.Jeep
    case "Jeep":
        return Automobile.TypeOfBulk.Hatchback
    default:
        return nil
    }
}


}
