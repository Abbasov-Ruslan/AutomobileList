//
//  fileWrite.swift
//  AutomobileList
//
//  Created by Ruslan Abbasov on 17.09.2020.
//  Copyright © 2020 Ruslan Abbasov. All rights reserved.
//

import Foundation



func saveData(carArray:[Automobile]) {
    
    let file = "automobileArraySave.txt"
    
    //let text = "some text2"
    
    
    
    if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
        
        let path = dir.appendingPathComponent(file)
        
        
        
        //writing
        do {
            var summ = ""
            
            for car in carArray {
                let brand = car.brand
                let model = car.model
                let year = String(car.year)
                let typeOfBulk:String = carTypeToString(car: car)!
                summ = summ + brand + " " + model + " " + year + " " + typeOfBulk + "\n"
                //print(summ)
            }
            //print(summ)
            summ.remove(at: summ.index(before: summ.endIndex))
            try summ.write(to: path, atomically: true, encoding: .utf8)

        }
        catch {/* error handling here */}
        
        
        
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
            for i in 0...result.capacity - 1 {
                let result2: [String] =  result[i].components(separatedBy: [" "])
                 var carFromFile = Automobile(yearOfProducing: Int(result2[2])!, carBrand: result2[0], carModel: result2[1], typeOfCar: stringToType(str: result2[3])!)
                carArray.append(carFromFile)
            }
            
        }
        catch {/* error handling here */}
        
    }
    
    return carArray
    
}




func carTypeToString(car:Automobile) -> String? {
    
    
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
    default:
        return nil
    }
}


func stringToType(str:String) -> Automobile.TypeOfBulk? {
    
    
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
