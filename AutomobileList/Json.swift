//
//  Json.swift
//  AutomobileList
//
//  Created by Ruslan Abbasov on 18.09.2020.
//  Copyright © 2020 Ruslan Abbasov. All rights reserved.
//

import Foundation

func jsoner(carList: Automobile) {
    
    let documentsDirectoryPathString = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
    let documentsDirectoryPath = NSURL(string: documentsDirectoryPathString)!
    
    
    
    
    
    var jsonFilePath = documentsDirectoryPath.appendingPathComponent("test.json")
    let fileManager = FileManager.default
    var isDirectory: ObjCBool = false
    
    // creating a .json file in the Documents folder
    if !fileManager.fileExists(atPath: jsonFilePath!.absoluteString, isDirectory: &isDirectory) {
        let created = fileManager.createFile(atPath: jsonFilePath!.absoluteString, contents: nil, attributes: nil)
        if created {
            print("File created ")
        } else {
            print("Couldn't create file for some reason")
        }
    } else {
        print("File already exists")
    }
    
    
    
    
    //// creating an array of test data
    let numbers = carList
    //    numbers.append("Test")
    
    let encoder = JSONEncoder()
    let decoder = JSONDecoder()
    
    if let encoded = try? encoder.encode(numbers) {
        if let json = String(data: encoded, encoding: .utf8) {
            jsonFilePath = documentsDirectoryPath.appendingPathComponent("test.json")
            do {
                let file = try FileHandle(forWritingTo: jsonFilePath!)
                file.write(encoded as Data)
                print("JSON data was written to the file successfully!")
            } catch let error as NSError {
                print("Couldn't write to file: \(error.localizedDescription)")
            }
            print(json)
            
            
            
            let jsonEncoder = JSONEncoder()
            do {
            let jsonData = try jsonEncoder.encode(carList)
            let json = String(data: jsonData, encoding: String.Encoding.utf16)
                
            let jsonDecoder = JSONDecoder()
            let secondDog = try jsonDecoder.decode(Automobile.self, from: jsonData)
                
                print(secondDog.brand)
                
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        
        
    }
}
}


func readJsonFile() {
    
    let documentsDirectoryPathString = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
    let documentsDirectoryPath = NSURL(string: documentsDirectoryPathString)!
//    var jsonFilePath = documentsDirectoryPath.appendingPathComponent("test.json")
    let fileManager = FileManager.default
    var isDirectory: ObjCBool = false
    
    let decoder = JSONDecoder()
    
    
    
     
        do {
            let file = URL(fileURLWithPath: "/Users/ruslanabbasov/Documents/test.json")
                let data = try Data(contentsOf: file)
            let json = try decoder.decode(Automobile.self, from: data)
                if let object = json as? [String: Any] {
                    // json is a dictionary
                    print(object)
                } else if let object = json as? [Any] {
                    // json is an array
                    print(object)
                } else {
                    print("JSON is invalid")
                }
        } catch {
            print(error.localizedDescription)
        }
    
    
    
//    do {
//        let jsonData = try Data(contentsOf: jsonFilePath!)
//
//        let secondDog = try decoder.decode(Automobile.self, from: jsonData)
//        print(secondDog)
//    } catch let error as NSError {
//        print(error.localizedDescription)
//    }
    
    
}




func writetoJson(car: Automobile){
    
    let numbers = car
    
    
    if let jsonFilePath = URL(string: "/Users/ruslanabbasov/Documents/test.json"){
        let encoder = JSONEncoder()
        let encoded = (try? encoder.encode(numbers))!
        let json = String(data: encoded, encoding: .utf8)
        do {
            let file = try FileHandle(forWritingTo: jsonFilePath)
            file.write(encoded as Data)
            print("JSON data was written to the file successfully!")
        } catch let error as NSError {
            print("Couldn't write to file: \(error.localizedDescription)")
        }
        print(json)
        
    }
    
}
















