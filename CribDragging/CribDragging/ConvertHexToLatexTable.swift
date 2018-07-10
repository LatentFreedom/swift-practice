import Foundation

////////////////////////////////////////////////////////////////////
////////////////// INPUTS //////////////////////////////////////////
////////////////////////////////////////////////////////////////////

let messageHex = "00000000150A19011D1D161700665E521F16404500061B50105C000A0017174C2C1C0C104804064F28693D4E5522050B114107000C5201491B0B4345515F5F0C4F0445340801094935054F215D4F2555125953010F41024D52011D0016530949134F1A0B1D06411B1D070B521C480035481641190B05021048411A0E0C0A5408184C151C0A524D050B010302171B0752044C0008475005001A1C53414F254804520D070C075653170E1B0A1517160C540E4E0945040B1C0111451048114F41434A5C424F4C740C061F160C1A4906001D4F170F1045014E0C1C471D00104801094C070E1E520D0D0B450608164B470E181941411C413C1D494C3A1A06431541000D0B5454030317531707154574161D1E091D001C0A100012174F020C1E16444346542C044E1A150D432E0C10"

////////////////////////////////////////////////////////////////////
////////////////// latexTableFormatForArray ////////////////////////
////////////////////////////////////////////////////////////////////

// convert binary array of single characters into format for latex tabular
func latexTableFormatForArray(anArray : [String], length : Int) -> String {
    var formattedMessage : String = String()
    
    var space = 0
    for i in 0..<length {
        
        if ((i % 4 == 0) && (i != 0)) {
            if space == 7 {
                formattedMessage += " \\\\ \n\(anArray[i])"
                space = 0
            }
            else {
                formattedMessage += " & \(anArray[i])"
                space += 1
            }
        }
        else {
            formattedMessage += anArray[i]
        }
    }
    return formattedMessage
}

////////////////////////////////////////////////////////////////////
////////////////// convertStringToArrayOfCharacters ////////////////
////////////////////////////////////////////////////////////////////

func convertStringToArrayOfCharacters(aString : String) -> [String] {
    var anArray : [String] = Array()
    
    for c in aString.characters {
        anArray.append(String(c))
    }
    
    return anArray
}

////////////////////////////////////////////////////////////////////
////////////////// Code starts here ////////////////////////////////
////////////////////////////////////////////////////////////////////

let messageArray : [String] = convertStringToArrayOfCharacters(messageHex)
let messageLatex : String = latexTableFormatForArray(messageArray, length: messageArray.count)

print(messageLatex + "\\\\")
