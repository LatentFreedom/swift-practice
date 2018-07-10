import Foundation



func xorCiphertexts(ciphertextHexString1 : String, ciphertextHexString2 : String) -> String {
    
    // creating arrays to hold each ciphertext, split by white space
    let formattedHex1 = inputHex1.characters.split(" ")
    let formattedHex2 = inputHex2.characters.split(" ")
    
    // initialize value to hold binary string of HEX ciphertext
    var binValue : String = String()
    
    // variable to hold xor string of ciphertext's strings
    var xorBinaryCiphertext : String = String()
    
    //
    var xorHexString : String = String()
    
    // loop through each hex value within the array of hex values for ciphertext 1
    for hexValue in formattedHex1 {
        
        // call function to convert hex values to binary
        // append each binary value returned to variable binValue
        binValue += HexToBinary(String(hexValue))
    }
    
    // set variable to the binary string for ciphertext 1
    let binaryCiphertext1 : String = binValue
    
    // reset the binary value variable to be used for ciphertex 2
    binValue = String()
    
    // loop through each hex value within the array of hex values for ciphertext 2
    for hexValue in formattedHex2 {
        
        // call function to convert hex values to binary
        // append each binary value returned to variable binValue
        binValue += HexToBinary(String(hexValue))
    }
    
    // set variable to the binary string for ciphertext 2
    let binaryCiphertext2 : String = binValue
    
    // output character count for binary ciphertext 1 // should be 2400 for 600 HEX characters
    print("Ciphertext 1 has \(binaryCiphertext1.characters.count) characters")
    //print(binaryCiphertext1)
    
    // output character count for binary ciphertext 2
    print("Ciphertext 2 has \(binaryCiphertext2.characters.count) characters")
    //print(binaryCiphertext2)
    
    // create arrays that hold each individual bit from the binary ciphertext string of characters
    let binaryCiphertextArray1 : [String] = StringToArrayOfCharacters(binaryCiphertext1)
    let binaryCiphertextArray2 : [String] = StringToArrayOfCharacters(binaryCiphertext2)
    
    let characterLength = binaryCiphertext1.characters.count
    
    xorBinaryCiphertext = XorTwoBinaryArraysOfCharacters(binaryCiphertextArray1, binaryArray2: binaryCiphertextArray2, length: characterLength)
    
    // output character count for the xor binary ciphertext
    print("Message XOR has \(xorBinaryCiphertext.characters.count) characters")
    print(xorBinaryCiphertext)
    
    // get formatted string of binary characters in groups of 4
    let b : String = AddSpaceToString(xorBinaryCiphertext, length: xorBinaryCiphertext.characters.count)
    
    // split formatted binary string into array
    let formattedMessageBinaryArray = b.characters.split(" ")
    
    for c in formattedMessageBinaryArray {
        xorHexString += BinaryToHex(String(c))
    }
    
    print("The message in HEX has \(xorHexString.characters.count) characters")
    print(xorHexString)
    
    return xorHexString
    
}
