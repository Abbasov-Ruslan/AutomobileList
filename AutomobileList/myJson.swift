//
//  myJson.swift
//  AutomobileList
//
//  Created by Ruslan Abbasov on 18.09.2020.
//  Copyright © 2020 Ruslan Abbasov. All rights reserved.
//

import Foundation

func saveMyJson(carJson:Automobile) {

    
    
    let carJson = carJson
    let jsonEncoder = JSONEncoder()
    do {
    let jsonData = try jsonEncoder.encode(carJson)
    let json = String(data: jsonData, encoding: String.Encoding.utf16)
        
    let jsonDecoder = JSONDecoder()
    let secondDog = try jsonDecoder.decode(Automobile.self, from: jsonData)
        
        print(secondDog)
        
    } catch let error as NSError {
        print(error.localizedDescription)
    }
    
    
    
}
