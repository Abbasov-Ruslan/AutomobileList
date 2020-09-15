//  main.swift
//  AutomobileList
//
//  Created by Ruslan Abbasov on 15.09.2020.
//  Copyright © 2020 Ruslan Abbasov. All rights reserved.
//

import Foundation



func main () {
    let date:Date = Date.init(timeIntervalSinceNow: 20)

    let markToy = Automobile(yearOfProducing: date, carBrand: "Toyota", carModel: "Mark", typeOfCar: Automobile.TypeOfBulk.Sedan)
    
    print(markToy.brand)
}


main()
