//  main.swift
//  AutomobileList
//
//  Created by Ruslan Abbasov on 15.09.2020.
//  Copyright © 2020 Ruslan Abbasov. All rights reserved.
//

import Foundation


func main () {

    let markToy = Automobile(yearOfProducing: 2013, carBrand: "Toyota", carModel: "Mark", typeOfCar: Automobile.TypeOfBulk.Sedan)
    
    let carArray = [markToy]
    
    let carList = CarList(carArray: carArray )
    
    carList.editCarInfo(numberOfCar: 1)
    
    print(markToy.year)
    
    carList.editCarInfo(numberOfCar: 1)
    
    
    
}


main()
