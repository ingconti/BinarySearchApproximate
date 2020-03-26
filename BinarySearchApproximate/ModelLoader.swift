//
//  ModelLoader.swift
//  BinarySearchApproximate
//
//  Created by ing.conti on 26/03/2020.
//  Copyright © 2020 ing.conti. All rights reserved.
//

import Cocoa

class ModelLoader {
    
    
    static let shared = ModelLoader()
    
    let numbersArr = [
        11,22,33,44,55,1000,30000
    ]
    
    let customArr = [
        
        MyCustomType(v1: 1, v2: 1),
        MyCustomType(v1: 2, v2: 2),
        MyCustomType(v1: 3, v2: 3),
    ]
    
   
    
    func testSimple(){
        if let here = numbersArr.search(element: 22){
            let v = numbersArr[here]
            print("at: \(here): \(v)")
        }
        
        if let here = binarySearch(inputArr: numbersArr, searchItem: 22){
            let v = numbersArr[here]
            print("\nagain:\nat: \(here): \(v)")
        }
        
        if let here = binarySearch(inputArr: numbersArr, searchItem: 22, approximation: 1){
            let v = numbersArr[here]
            print("\napprox again:\nat: \(here): \(v)")
        }
        
        // no approx i.e. == 0
        let ct1 = MyCustomType(v1: 1.2, v2: 1.1)
         if let here = binarySearch(inputArr: customArr, searchItem: ct1, approximation: 0.4){
             let v = customArr[here]
             print("\napprox == 0 custom:\nat: \(here): \(v)")
         }
         else{
             print("\napprox custom NOT FOUND")
         }
         
        let ct2 = MyCustomType(v1: 1, v2: 1)
         if let here = binarySearch(inputArr: customArr, searchItem: ct2, approximation: 0.4){
             let v = customArr[here]
             print("\napprox == 0 custom:\nat: \(here): \(v)")
         }
         else{
             print("\napprox custom NOT FOUND")
         }
         

        // no approx i.e. == 1
        let ct3 = MyCustomType(v1: 2.92, v2: 3.1)
        MyCustomType.set(approx: 0.3)
        if let here = binarySearch(inputArr: customArr, searchItem: ct3, approximation: 0.4){
            let v = customArr[here]
            print("\napprox custom:\nat: \(here): \(v)")
        }
        else{
            print("\napprox custom NOT FOUND")
        }
        
        //----
        if let here = customArr.search(element: ct3){
                  let v = customArr[here]
                  print("\n approx with at: \(here): \(v)")
              }
    }
    
}



//sample from:
// https://agostini.tech/2017/01/30/binary-search-array-extension-in-swift/
extension Array where Element: Comparable {
    
    func search(element: Element) -> Int? {
        
        var low = 0
        var high = count - 1
        var mid = Int(high / 2)
        
        while low <= high {
            
            let midElement = self[mid]
            
            if element == midElement {
                return mid
            }
            else if element < midElement {
                high = mid - 1
            }
            else {
                low = mid + 1
            }
            
            mid = (low + high) / 2
        }
        
        return nil
    }
}

