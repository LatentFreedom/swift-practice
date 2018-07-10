import Foundation

////////////////////////////////////////////////////////////////////////////////////
// input the crib /// convert ascii to hex /// convert hex to binary ///////////////
////////////////////////////////////////////////////////////////////////////////////
// convert the binary string into array of single string characters ////////////////
////////////////////////////////////////////////////////////////////////////////////
// that allows for XORing with the xorMessage given below //////////////////////////
////////////////////////////////////////////////////////////////////////////////////

func CreateCribBinaryArrayOfCharacters(cribAsciiString : String) -> [String] {
    print("crib = '\(cribAsciiString)'")
    
    let cribAsciiArray : [String] = StringToArrayOfCharacters(cribAsciiString)
    
    var myHexCrib : String = String()
    
    // convert the ascii array into hex string
    for s in cribAsciiArray {
        myHexCrib += AsciiToHex(s)
    }
    
    // convert hex crib into binary
    let cribBinary : String = HexToBinary(myHexCrib)
    
    // convert crib binary string into array of characters
    let cribBinaryArray = StringToArrayOfCharacters(cribBinary)
    
    return cribBinaryArray
}


////////////////////////////////////////////////////////////////////////////////////
// convert xorBinary into an array with the length of the given crib ///////////////
////////////////////////////////////////////////////////////////////////////////////
// take individual xorMessage string from array ////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////
// convert the String into pulled into a new arry of single string characters //////
////////////////////////////////////////////////////////////////////////////////////
// that allows for XORing with the cribBinary given above //////////////////////////
////////////////////////////////////////////////////////////////////////////////////

func CreateXorBinaryArrayOfCharacters(xorBinaryString : String, cribBinaryLength : Int) -> [String] {

    let xorArrayOfCharacters : [String] = StringToArrayOfCharacters(xorBinaryString)
    
    return xorArrayOfCharacters
}