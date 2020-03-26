//
//  BinarySearch.swift
//  BinarySearchApproximate
//
//  Created by ing.conti on 26/03/2020.
//  Copyright © 2020 ing.conti. All rights reserved.
//

//another examole:
// https://stackoverflow.com/questions/31904396/swift-binary-search-for-standard-array

func binarySearch<T:Comparable>(inputArr:Array<T>, searchItem: T) -> Int? {
    var lowerIndex = 0;
    var upperIndex = inputArr.count - 1

    while (true) {
        let currentIndex = (lowerIndex + upperIndex)/2
        if(inputArr[currentIndex] == searchItem) {
            return currentIndex
        } else if (lowerIndex > upperIndex) {
            return nil
        } else {
            if (inputArr[currentIndex] > searchItem) {
                upperIndex = currentIndex - 1
            } else {
                lowerIndex = currentIndex + 1
            }
        }
    }
}

//my variations:

func binarySearch<T:Comparable>(inputArr:Array<T>, searchItem: T, approximation: Double) -> Int? {
    var lowerIndex = 0;
    var upperIndex = inputArr.count - 1

    while (true) {
        let currentIndex = (lowerIndex + upperIndex)/2
        if(inputArr[currentIndex] == searchItem) {
            return currentIndex
        } else if (lowerIndex > upperIndex) {
            return nil
        } else {
            if (inputArr[currentIndex] > searchItem) {
                upperIndex = currentIndex - 1
            } else {
                lowerIndex = currentIndex + 1
            }
        }
    }
}
