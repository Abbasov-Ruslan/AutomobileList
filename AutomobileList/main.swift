//  main.swift
//  AutomobileList
//
//  Created by Ruslan Abbasov on 15.09.2020.
//  Copyright © 2020 Ruslan Abbasov. All rights reserved.
//

import Foundation


func main () {

//    let car1 = Automobile(yearOfProducing: 2019, carBrand: "Totyota", carModel: "GTR", typeOfCar: Automobile.TypeOfBulk.Sedan)
//
//    let car2 = Automobile(yearOfProducing: 2009, carBrand: "Totyota", carModel: "Granvia", typeOfCar: Automobile.TypeOfBulk.Van)
//
//    let car3 = Automobile(yearOfProducing: 2013, carBrand: "Totyota", carModel: "Pajero", typeOfCar: Automobile.TypeOfBulk.Jeep)
    
    var arrayOfCars:[Automobile] = readData()
    
    
    var carList2 = CarList(carArray: arrayOfCars)
        
    let menu2 = menu()
    
    var counter = "1"
    
    
    
    while menu2.counter != "exit" {
        
        menu2.printMenu()
        
        menu2.chooseAction(listOfCar: carList2)
        
        print("Press enter to continue")
        
        readLine()
        
        print("""



                        


                    """)
        
    }
    
    saveData(carArray:carList2.carArray)

//    saveData(carArray: arrayOfCars)
    
    //saveData(carArray:arrayOfCars)
    
    
    
    
    
}

main()


