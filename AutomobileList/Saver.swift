//
//  saver.swift
//  AutomobileList
//
//  Created by Ruslan Abbasov on 16.09.2020.
//  Copyright © 2020 Ruslan Abbasov. All rights reserved.
//

import Foundation

class AutomobileSaver: NSObject, NSCoding {
    
    
    
    // MARK: - Private Properties
    
    enum TypeOfBulk {
        case Hatchback, Sedan, MUV, Coupe, Convertible, Wagon, Van, Jeep
    }
    
    var year: Int
    var brand: String
    var model: String
    var type: TypeOfBulk
    
    // MARK: - Initializers
    
    init(yearOfProducing: Int, carBrand: String, carModel: String, typeOfCar:TypeOfBulk) {
        self.year = yearOfProducing
        self.brand = carBrand
        self.model = carModel
        self.type = typeOfCar
    }
    
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(year, forKey: "year")
        aCoder.encode(brand, forKey: "brand")
        aCoder.encode(model, forKey: "model")
        aCoder.encode(type, forKey: "type")
    }
    
    required convenience init(coder aDecoder: NSCoder) {
        var year: Int = aDecoder.decodeInteger(forKey: "year")
        var brand: String = aDecoder.decodeObject(forKey: "brand") as! String
        var model: String = aDecoder.decodeObject(forKey: "model") as! String
        var type: TypeOfBulk = aDecoder.decodeObject(forKey: "type") as! AutomobileSaver.TypeOfBulk
        self.init(yearOfProducing: year, carBrand: brand, carModel: model, typeOfCar:type)
    }
    
}





