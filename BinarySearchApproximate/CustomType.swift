//
//  CustomType.swift
//  BinarySearchApproximate
//
//  Created by ing.conti on 26/03/2020.
//  Copyright © 2020 ing.conti. All rights reserved.
//

import Foundation

struct MyCustomType{
    var v1: Double = 0
    var v2: Double = 0
    
    private static var approx = 0.0
    
    static func set(approx: Double){
        Self.approx  = approx
    }
    
    init(v1: Double, v2: Double) {
        self.v1 = v1
        self.v2 = v2
    }
    
    
    func distanceFrom(t: MyCustomType)->Double{
        
        let deltax = v1 - t.v1
        let deltay = v2 - t.v2
        let delta = sqrt(deltax * deltax + deltay * deltay )
        return delta
    }
    
    
    
    func 𝜌()->Double{
        
        let deltax = v1
        let deltay = v2
        let delta = sqrt(deltax * deltax + deltay * deltay )
        return delta
    }
}

typealias MyCustomArray = [MyCustomType]


// https://developer.apple.com/documentation/swift/comparable


extension MyCustomType: Comparable {
    static func < (lhs: MyCustomType, rhs: MyCustomType) -> Bool {
        
        lhs.𝜌() < rhs.𝜌()
    }
    
    static func > (lhs: MyCustomType, rhs: MyCustomType) -> Bool {
        
        lhs.𝜌() > rhs.𝜌()
    }
    
    
    static func == (lhs: MyCustomType, rhs: MyCustomType) -> Bool {
        let d = lhs.distanceFrom(t: rhs)
        return d <= approx
    }
    
}
