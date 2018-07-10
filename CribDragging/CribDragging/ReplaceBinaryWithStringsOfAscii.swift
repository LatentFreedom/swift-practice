//
//  ReplaceBinaryWithStringsOfAscii.swift
//  CribDragging
//
//  Created by Nick Palumbo on 4/1/16.
//  Copyright © 2016 Nick Palumbo. All rights reserved.
//

import Foundation

func ReplaceBinarySectionWithStringOfAscii(binaryString : String, asciiString : String, startBit : Int, endBit : Int) -> String {
    
    var tempCharacterArray = Array(binaryString.characters)
    
    var firstPartOfBinaryString : String = String()
    
    // 
    for i in 0..<startBit {
        firstPartOfBinaryString += String(tempCharacterArray[i])
    }
    firstPartOfBinaryString += asciiString
    
    for i in endBit..<binaryString.characters.count {
        firstPartOfBinaryString += String(tempCharacterArray[i])
    }
    
    print(firstPartOfBinaryString)
    return firstPartOfBinaryString
    
}