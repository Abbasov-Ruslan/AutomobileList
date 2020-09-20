//
//  Automobile.swift
//  AutomobileList
//
//  Created by Ruslan Abbasov on 15.09.2020.
//  Copyright © 2020 Ruslan Abbasov. All rights reserved.
//

import Foundation


class Automobile{
    
    // MARK: - Private Properties
    
    enum TypeOfBulk:Int {
        case Hatchback, Sedan, MUV, Coupe, Convertible, Wagon, Van, Jeep
    }

    internal var year: Int
    internal var brand: String
    internal var model: String
    internal var type: TypeOfBulk
    
    // MARK: - Initializers
    
    init(yearOfProducing: Int, carBrand: String, carModel: String, typeOfCar:TypeOfBulk ) {
        self.year = yearOfProducing
        self.brand = carBrand
        self.model = carModel
        self.type = typeOfCar
    }

}




