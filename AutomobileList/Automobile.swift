//
//  Automobile.swift
//  AutomobileList
//
//  Created by Ruslan Abbasov on 15.09.2020.
//  Copyright © 2020 Ruslan Abbasov. All rights reserved.
//

import Foundation


 class Automobile {
    
    // MARK: - Private Properties
    
    enum TypeOfBulk {
        case Hatchback, Sedan, MUV, Coupe, Convertible, Wagon, Van, Jeep
    }

    var year: Date
    var brand: String
    var model: String
    var type: TypeOfBulk
    
    // MARK: - Initializers
    
    init(yearOfProducing: Date, carBrand: String, carModel: String, typeOfCar:TypeOfBulk ) {
        self.year = yearOfProducing
        self.brand = carBrand
        self.model = carModel
        self.type = typeOfCar
    }

}




