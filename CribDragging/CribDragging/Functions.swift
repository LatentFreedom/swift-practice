//
//  Functions.swift
//  CribDragging
//
//  Created by Nick Palumbo on 3/31/16.
//  Copyright © 2016 Nick Palumbo. All rights reserved.
//

import Foundation

////////////////////////////////////////////////////////////////////
///////////////////// AddSpaceToString /////////////////////////////
////////////////////////////////////////////////////////////////////

func AddSpaceToString(aString : String, length : Int) -> String {
    
    // String to hold formatted string
    var formattedMessage : String = String()
    let formattedArray : [String] = StringToArrayOfCharacters(aString)
    
    for i in 0..<length {
        
        if ((i % 4 == 0) && (i != 0)) {
            formattedMessage += "  \(formattedArray[i])"
        }
        else {
            formattedMessage += formattedArray[i]
        }
    }
    return formattedMessage
}

////////////////////////////////////////////////////////////////////
/////////////////////////// AsciiToHex /////////////////////////////
////////////////////////////////////////////////////////////////////

func AsciiToHex(asciiString : String) -> String {
    var hexString : String = String()
    
    switch(asciiString) {
    case "nul": hexString = "00"
    case "soh": hexString = "01"
    case "stx": hexString = "02"
    case "etx": hexString = "03"
    case "eot": hexString = "04"
    case "enq": hexString = "05"
    case "ack": hexString = "06"
    case "bel": hexString = "07"
    case "bs": hexString = "08"
    case "ht": hexString = "09"
    case "nl": hexString = "0a"
    case "vt": hexString = "0b"
    case "np": hexString = "0c"
    case "cr": hexString = "0d"
    case "so": hexString = "0e"
    case "si": hexString = "0f"
    case "dle": hexString = "10"
    case "dc1": hexString = "11"
    case "dc2": hexString = "12"
    case "dc3": hexString = "13"
    case "dc4": hexString = "14"
    case "nak": hexString = "15"
    case "syn": hexString = "16"
    case "etb": hexString = "17"
    case "can": hexString = "18"
    case "em": hexString = "19"
    case "sub": hexString = "1a"
    case "esc": hexString = "1b"
    case "fs": hexString = "1c"
    case "gs": hexString = "1d"
    case "rs": hexString = "1e"
    case "us": hexString = "1f"
    case " ": hexString = "20"
    case "!": hexString = "21"
    //case " ": hexString = "22"
    case "#": hexString = "23"
    case "$": hexString = "24"
    case "%": hexString = "25"
    case "&": hexString = "26"
    case "'": hexString = "27"
    case "(": hexString = "28"
    case ")": hexString = "29"
    case "*": hexString = "2a"
    case "+": hexString = "2b"
    case ",": hexString = "2c"
    case "-": hexString = "2d"
    case ".": hexString = "2e"
    case "/": hexString = "2f"
    case "0": hexString = "30"
    case "1": hexString = "31"
    case "2": hexString = "32"
    case "3": hexString = "33"
    case "4": hexString = "34"
    case "5": hexString = "35"
    case "6": hexString = "36"
    case "7": hexString = "37"
    case "8": hexString = "38"
    case "9": hexString = "39"
    case ":": hexString = "3a"
    case ";": hexString = "3b"
    case "<": hexString = "3c"
    case "=": hexString = "3d"
    case ">": hexString = "3e"
    case "?": hexString = "3f"
    case "@": hexString = "40"
    case "A": hexString = "41"
    case "B": hexString = "42"
    case "C": hexString = "43"
    case "D": hexString = "44"
    case "E": hexString = "45"
    case "F": hexString = "46"
    case "G": hexString = "47"
    case "H": hexString = "48"
    case "I": hexString = "49"
    case "J": hexString = "4a"
    case "K": hexString = "4b"
    case "L": hexString = "4c"
    case "M": hexString = "4d"
    case "N": hexString = "4e"
    case "O": hexString = "4f"
    case "P": hexString = "50"
    case "Q": hexString = "51"
    case "R": hexString = "52"
    case "S": hexString = "53"
    case "T": hexString = "54"
    case "U": hexString = "55"
    case "V": hexString = "56"
    case "W": hexString = "57"
    case "X": hexString = "58"
    case "Y": hexString = "59"
    case "Z": hexString = "5a"
    case "[": hexString = "5b"
    case "\\": hexString = "5c"
    case "]": hexString = "5d"
    case "^": hexString = "5e"
    case "_": hexString = "5f"
    case "`": hexString = "60"
    case "a": hexString = "61"
    case "b": hexString = "62"
    case "c": hexString = "63"
    case "d": hexString = "64"
    case "e": hexString = "65"
    case "f": hexString = "66"
    case "g": hexString = "67"
    case "h": hexString = "68"
    case "i": hexString = "69"
    case "j": hexString = "6a"
    case "k": hexString = "6b"
    case "l": hexString = "6c"
    case "m": hexString = "6d"
    case "n": hexString = "6e"
    case "o": hexString = "6f"
    case "p": hexString = "70"
    case "q": hexString = "71"
    case "r": hexString = "72"
    case "s": hexString = "73"
    case "t": hexString = "74"
    case "u": hexString = "75"
    case "v": hexString = "76"
    case "w": hexString = "77"
    case "x": hexString = "78"
    case "y": hexString = "79"
    case "z": hexString = "7a"
    case "{": hexString = "7b"
    case "|": hexString = "7c"
    case "}": hexString = "7d"
    case "~": hexString = "7e"
    case "del": hexString = "7f"
    default:
        "Invalid ascii \(asciiString)"
    }
    return hexString
}

////////////////////////////////////////////////////////////////////
////////////////////////// HexToAscii //////////////////////////////
////////////////////////////////////////////////////////////////////

func HexToAscii(hexString : String) -> String {
    var binString : String = String()
    
    switch(hexString) {
        /*
         case "00": binString = "nul"
         case "01": binString = "soh"
         case "02": binString = "stx"
         case "03": binString = "etx"
         case "04": binString = "eot"
         case "05": binString = "enq"
         case "06": binString = "ack"
         case "07": binString = "bel"
         case "08": binString = "bs"
         case "09": binString = "ht"
         case "0a": binString = "nl"
         case "0b": binString = "vt"
         case "0c": binString = "np"
         case "0d": binString = "cr"
         case "0e": binString = "so"
         case "0f": binString = "si"
         case "10": binString = "dle"
         case "11": binString = "dc1"
         case "12": binString = "dc2"
         case "13": binString = "dc3"
         case "14": binString = "dc4"
         case "15": binString = "nak"
         case "16": binString = "syn"
         case "17": binString = "etb"
         case "18": binString = "can"
         case "19": binString = "em"
         case "1a": binString = "sub"
         case "1b": binString = "esc"
         case "1c": binString = "fs"
         case "1d": binString = "gs"
         case "1e": binString = "rs"
         case "1f": binString = "us"
         */
    case "20": binString = " "
    case "21": binString = "!"
        //case "22": binString = " "
         //case "23": binString = "#"
         //case "24": binString = "$"
         //case "25": binString = "%"
         //case "26": binString = "&"
         case "27": binString = "'"
         case "28": binString = "("
         case "29": binString = ")"
         //case "2a": binString = "*"
         case "2b": binString = "+"
    case "2c": binString = ","
    //case "2d": binString = "-"
    case "2e": binString = "."
    case "2f": binString = "/"
    case "30": binString = "0"
    case "31": binString = "1"
    case "32": binString = "2"
    case "33": binString = "3"
    case "34": binString = "4"
    case "35": binString = "5"
    case "36": binString = "6"
    case "37": binString = "7"
    case "38": binString = "8"
    case "39": binString = "9"
    //case "3a": binString = ":"
    //case "3b": binString = ";"
    //case "3c": binString = "<"
    //case "3d": binString = "="
    //case "3e": binString = ">"
    case "3f": binString = "?"
    //case "40": binString = "@"
    case "41": binString = "A"
    case "42": binString = "B"
    case "43": binString = "C"
    case "44": binString = "D"
    case "45": binString = "E"
    case "46": binString = "F"
    case "47": binString = "G"
    case "48": binString = "H"
    case "49": binString = "I"
    case "4a": binString = "J"
    case "4b": binString = "K"
    case "4c": binString = "L"
    case "4d": binString = "M"
    case "4e": binString = "N"
    case "4f": binString = "O"
    case "50": binString = "P"
    case "51": binString = "Q"
    case "52": binString = "R"
    case "53": binString = "S"
    case "54": binString = "T"
    case "55": binString = "U"
    case "56": binString = "V"
    case "57": binString = "W"
    case "58": binString = "X"
    case "59": binString = "Y"
    case "5a": binString = "Z"
        case "5b": binString = "["
        //case "5c": binString = "\\"
        case "5d": binString = "]"
        //case "5e": binString = "^"
        //case "5f": binString = "_"
    case "60": binString = "`"
    case "61": binString = "a"
    case "62": binString = "b"
    case "63": binString = "c"
    case "64": binString = "d"
    case "65": binString = "e"
    case "66": binString = "f"
    case "67": binString = "g"
    case "68": binString = "h"
    case "69": binString = "i"
    case "6a": binString = "j"
    case "6b": binString = "k"
    case "6c": binString = "l"
    case "6d": binString = "m"
    case "6e": binString = "n"
    case "6f": binString = "o"
    case "70": binString = "p"
    case "71": binString = "q"
    case "72": binString = "r"
    case "73": binString = "s"
    case "74": binString = "t"
    case "75": binString = "u"
    case "76": binString = "v"
    case "77": binString = "w"
    case "78": binString = "x"
    case "79": binString = "y"
    case "7a": binString = "z"
        //case "7b": binString = "{"
        //case "7c": binString = "|"
        //case "7d": binString = "}"
        //case "7e": binString = "~"
    //case "7f": binString = "del"
    default:
        "Invalid ascii \(hexString)"
        binString = "_"
    }
    return binString
}

////////////////////////////////////////////////////////////////////
////////////// StringToArrayOfCharacters ////////////////////
////////////////////////////////////////////////////////////////////

func StringToArrayOfCharacters(aString : String) -> [String] {
    var anArray : [String] = Array()
    
    for c in aString.characters {
        anArray.append(String(c))
    }
    
    return anArray
}

////////////////////////////////////////////////////////////////////
///////////////////// StringToArrayOf2CharacterStrings /////////////
////////////////////////////////////////////////////////////////////

func StringToArrayOfNStrings(aString : String, length : Int) -> [String] {
    var anArray : [String] = Array()
    
    var tempString : String = String()
    
    for c in aString.characters {
        tempString += String(c)
        if tempString.characters.count == length {
            anArray.append(tempString)
            tempString = String()
        }
    }
    
    return anArray
}

////////////////////////////////////////////////////////////////////
/////////////////////////// HexToBinary ////////////////////////////
////////////////////////////////////////////////////////////////////

func HexToBinary(hexValue : String) -> String {
    
    // create a string to hold the binary value that will be returned
    var binValue = String()
    
    // loop through each character in the hex value
    for i in hexValue.characters {
        
        // check against each letter "i" within
        switch(i){
        case "0":
            binValue += "0000"
        case "1":
            binValue += "0001"
        case "2":
            binValue += "0010"
        case "3":
            binValue += "0011"
        case "4":
            binValue += "0100"
        case "5":
            binValue += "0101"
        case "6":
            binValue += "0110"
        case "7":
            binValue += "0111"
        case "8":
            binValue += "1000"
        case "9":
            binValue += "1001"
        case "a", "A":
            binValue += "1010"
        case "b", "B":
            binValue += "1011"
        case "c", "C":
            binValue += "1100"
        case "d", "D":
            binValue += "1101"
        case "e", "E":
            binValue += "1110"
        case "f", "F":
            binValue += "1111"
        default:
            print("Invalid Hex: " + hexValue)
        }
    }
    
    return binValue
}

////////////////////////////////////////////////////////////////////
/////////////////////////// BinaryToHex ////////////////////////////
////////////////////////////////////////////////////////////////////

func BinaryToHex(binaryValue : String) -> String {
    var hexaValue = String()
    
    switch(binaryValue){
    case "0000":
        hexaValue = "0"
    case "0001":
        hexaValue = "1"
    case "0010":
        hexaValue = "2"
    case "0011":
        hexaValue = "3"
    case "0100":
        hexaValue = "4"
    case "0101":
        hexaValue = "5"
    case "0110":
        hexaValue = "6"
    case "0111":
        hexaValue = "7"
    case "1000":
        hexaValue = "8"
    case "1001":
        hexaValue = "9"
    case "1010":
        hexaValue = "a"
    case "1011":
        hexaValue = "b"
    case "1100":
        hexaValue = "c"
    case "1101":
        hexaValue = "d"
    case "1110":
        hexaValue = "e"
    case "1111":
        hexaValue = "f"
    default:
        print("Invalid Binary: " + binaryValue)
    }
    
    return hexaValue
}

////////////////////////////////////////////////////////////////////
//////////// XorTwoBinaryArraysOfCharacters ////////////////////////
////////////////////////////////////////////////////////////////////

func XorTwoBinaryArraysOfCharacters(binaryArray1 : [String], binaryArray2 : [String], length : Int) -> String {
    
    // string to hold final xor ciphertext in binary
    var xorString : String = String()
    
    // loop through the length of the binary array
    for i in 0..<length {
        
        /////////////////////
        //  x  |  y  | xor //
        //-----------------//
        //  0  |  0  |  0  //
        //  0  |  1  |  1  //
        //  1  |  0  |  1  //
        //  1  |  1  |  0  //
        /////////////////////
        
        if(binaryArray1[i] == binaryArray2[i])
        {
            xorString += "0"
        }
        else
        {
            xorString += "1"
        }
        
    }
    return xorString
}

////////////////////////////////////////////////////////////////////
//////////////////////// cribDragx2nBits ///////////////////////////
////////////////////////////////////////////////////////////////////

var stringCounter : Int = Int()

func cribDragx2nBits(xorBinaryCharacterArray : [String], cribBinaryCharacterArray : [String]) {
    
    let cribLength : Int = cribBinaryCharacterArray.count
    
    var i : Int = Int()
    
    // loop while the crib has not been dragged out of the xor binary
    while(i + cribLength < xorBinaryCharacterArray.count){
        
        
        var xorToBeDragged : [String] = Array()
        var hexResult : String = String()
        var hexResultArray : [String] = Array()
        var asciiResult : String = String()
        
        // create single character array of xor binary part to be xored with crib binary
        for n in i..<cribLength+i{
            xorToBeDragged.append(xorBinaryCharacterArray[n])
        }
        
        let result : String = XorTwoBinaryArraysOfCharacters(xorToBeDragged, binaryArray2: cribBinaryCharacterArray, length: cribLength)
        
        let resultArray4LengthBinaryStrings : [String] = StringToArrayOfNStrings(result, length: 4)
        for s in resultArray4LengthBinaryStrings {
            hexResult += BinaryToHex(String(s))
        }
        
        hexResultArray = StringToArrayOfNStrings(hexResult, length: 2)
        
        for s in hexResultArray {
            asciiResult += HexToAscii(s)
        }
        
        if (!(asciiResult.containsString("_"))) && (i+cribLength > 42) {
            stringCounter += 1
            print("\(asciiResult) : bit \(i) to \(i+cribLength) : \(i+1)")
        }
        else{
            //print("\(asciiResult) : bit \(i) to \(i+cribLength)")
        }
        
        i += 1
    }
    
}