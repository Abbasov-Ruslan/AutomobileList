//  main.swift
//  AutomobileList
//
//  Created by Ruslan Abbasov on 15.09.2020.
//  Copyright © 2020 Ruslan Abbasov. All rights reserved.
//

import Foundation


func lifeCycle () {
    
    
    // MARK: - Public Properties
    
    let menu2 = menu()
    let saveFile = File()
    let carList2 = CarList(carArray: saveFile.readData())

    // MARK: - Lifecycle
    
    while menu2.counter != "exit" {
        
        menu2.printMenu()
        
        menu2.chooseAction(listOfCar: carList2)
        
        if menu2.counter != "exit" {
        print("Press enter to continue")
        
        readLine()
        
        print("""



                        

                    """)
        }
        
    }
    saveFile.saveData(carArray:carList2.carArray)
    
}


