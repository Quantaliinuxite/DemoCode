
/**Dear Admissions Officers,

Below is a standalone class that I have written for the 'Foound' iOS app. The need for such a class arose from the lack 
of an NSPhoneNumberFormatter in the swift librairies, given that the app must be able to call international phone numbers
as well as displaying phone numbers in a fashion that will be familiar to the user (local format). I made the class conform
to the CustomStringConvertible protocol for easy testing.
 
Best regards,
 
Axel Kerbec
*/

import UIKit
var countryCodes = [
    "AD":"376",
    "AE":"971",
    "AF":"93",
    "AG":"1-268",
    "AI":"1-264",
    "AL":"355",
    "AM":"374",
    "AN":"599",
    "AO":"244",
    "AQ":"672",
    "AR":"54",
    "AS":"1-684",
    "AT":"43",
    "AU":"61",
    "AW":"297",
    "AX":"358",
    "AZ":"994",
    "BA":"387",
    "BB":"1-246",
    "BD":"880",
    "BE":"32",
    "BF":"226",
    "BG":"359",
    "BH":"973",
    "BI":"257",
    "BJ":"229",
    "BL":"590",
    "BM":"1-441",
    "BN":"673",
    "BO":"591",
    "BR":"55",
    "BS":"1-242",
    "BT":"975",
    "BW":"267",
    "BY":"375",
    "BZ":"501",
    "CA":"1",
    "CC":"61",
    "CD":"243",
    "CF":"236",
    "CG":"242",
    "CH":"41",
    "CI":"225",
    "CK":"682",
    "CL":"56",
    "CM":"237",
    "CN":"86",
    "CO":"57",
    "CR":"506",
    "CU":"53",
    "CV":"238",
    "CUW":"599",
    "CX":"61",
    "CY":"357",
    "CZ":"420",
    "DE":"49",
    "DJ":"253",
    "DK":"45",
    "DM":"1-767",
    "DO":"1-809",
    "DZ":"213",
    "EC":"593",
    "EE":"372",
    "EG":"20",
    "EH":"212",
    "ER":"291",
    "ES":"34",
    "ET":"251",
    "FI":"358",
    "FJ":"679",
    "FK":"500",
    "FM":"691",
    "FO":"298",
    "FR":"33",
    "GA":"241",
    "GB":"44",
    "GD":"1-473",
    "GE":"995",
    "GF":"594",
    "GG":"44-1481",
    "GH":"233",
    "GI":"350",
    "GL":"299",
    "GM":"220",
    "GN":"224",
    "GP":"590",
    "GQ":"240",
    "GR":"30",
    "GS":"500",
    "GT":"502",
    "GU":"1-671",
    "GW":"245",
    "GY":"592",
    "HK":"852",
    "HM":"0",
    "HN":"504",
    "HR":"385",
    "HT":"509",
    "HU":"36",
    "ID":"62",
    "IE":"353",
    "IL":"972",
    "IM":"44-1624",
    "IN":"91",
    "IO":"246",
    "IQ":"964",
    "IR":"98",
    "IS":"354",
    "IT":"39",
    "JE":"44-1534",
    "JM":"1-876",
    "JO":"962",
    "JP":"81",
    "KE":"254",
    "KG":"996",
    "KH":"855",
    "KI":"686",
    "KM":"269",
    "KN":"1-869",
    "KP":"850",
    "KR":"82",
    "KW":"965",
    "KY":"1-345",
    "KZ":"7",
    "LA":"856",
    "LB":"961",
    "LC":"1-758",
    "LI":"423",
    "LK":"94",
    "LR":"231",
    "LS":"266",
    "LT":"370",
    "LU":"352",
    "LV":"371",
    "LY":"218",
    "MA":"212",
    "MC":"377",
    "MD":"373",
    "ME":"382",
    "MF":"590",
    "MG":"261",
    "MH":"692",
    "MK":"389",
    "ML":"223",
    "MM":"95",
    "MN":"976",
    "MO":"853",
    "MP":"1-670",
    "MQ":"",
    "MR":"222",
    "MS":"1-664",
    "MT":"356",
    "MU":"230",
    "MV":"960",
    "MW":"265",
    "MX":"52",
    "MY":"60",
    "MZ":"258",
    "NA":"264",
    "NC":"687",
    "NE":"227",
    "NF":"672",
    "NG":"234",
    "NI":"505",
    "NL":"31",
    "NO":"47",
    "NP":"977",
    "NR":"674",
    "NU":"683",
    "NZ":"64",
    "OM":"968",
    "PA":"507",
    "PE":"51",
    "PF":"689",
    "PG":"675",
    "PH":"63",
    "PK":"92",
    "PL":"48",
    "PM":"508",
    "PN":"64",
    "PR":"1-787",
    "PS":"970",
    "PT":"351",
    "PW":"680",
    "PY":"595",
    "QA":"974",
    "RE":"262",
    "RO":"40",
    "RS":"381",
    "RU":"7",
    "RW":"250",
    "SA":"966",
    "SB":"677",
    "SC":"248",
    "SD":"249",
    "SE":"46",
    "SG":"65",
    "SH":"290",
    "SI":"386",
    "SJ":"47",
    "SK":"421",
    "SL":"232",
    "SM":"378",
    "SN":"221",
    "SO":"252",
    "SR":"597",
    "SSD":"211",
    "ST":"239",
    "SV":"503",
    "SX":"1-721",
    "SY":"963",
    "SZ":"268",
    "TC":"649",
    "TD":"235",
    "TG":"228",
    "TH":"66",
    "TJ":"992",
    "TK":"690",
    "TL":"670",
    "TM":"993",
    "TN":"216",
    "TO":"676",
    "TR":"90",
    "TT":"1-868",
    "TV":"688",
    "TW":"886",
    "TZ":"255",
    "UA":"380",
    "UG":"256",
    "UM":"1",
    "US":"1",
    "UY":"598",
    "UZ":"998",
    "VA":"379",
    "VC":"1-784",
    "VE":"58",
    "VG":"1-284",
    "VI":"1-340",
    "VN":"84",
    "VU":"678",
    "WF":"681",
    "WS":"685",
    "XK":"383",
    "YE":"967",
    "YT":"262",
    "ZA":"27",
    "ZM":"260",
    "ZW":"263"
]

/**Dictionary that holds the local format of a phone number. 
  Convention: the dot represents a number. The values are the format and the leading digit for that country.
  The leading digit is needed in case we have things like +33 646 etc... in which case we want the +33 to be replaced by the leading digit.
*/
var countryFormat = [ "US":("(...) ...-....", ""),
                      "FR":(".. .. .. .. ..","0")]

/**Takes a phone number and sets a phone number for display, a raw number with international code, as well as additional information about
a number, such as whether or not it is overcharged.
- TODO:
  - Implement overcharged numbers actions
  - Conform with NSFormatter`
*/
struct FormattedPhoneNumber: CustomStringConvertible {
  //MARK: Variables and init
  var originalNumber:String //We use those two variables to have a trace
  var originalCountryCode:String
  var internationalNumber:String?
  var localNumber:String? //localized phone number
  var error:String?
  var status = "OK"
  var errorCode:String? //Error codes will be established in the future
  var warning:String?
  var cc: String?
  
  var description:String {
    var baseString =
    "Number: \(originalNumber), cc: \(originalCountryCode): \(status)\n" +
    "International number: \(internationalNumber ?? "n/a")\n" +
    "Local Number: \(localNumber ?? "n/a")\n"
    if let err = error {
      baseString += "Error: \(err)"
    }
    if let warn = warning {
      baseString += "Warning: \(warn)"
    }
    return baseString+"\n\n"
  }
  
  init(phoneNumber: String, iso: String){
    originalNumber = phoneNumber
    originalCountryCode = iso.uppercaseString
    guard let _ = countryCodes[iso.uppercaseString] else {error = "Uknown ISO";status = "ERROR"; return}
    self.cc = iso.uppercaseString
    self.localNumber = formatPhoneNumberWithLocalFormat(phoneNumber)
    formatInternationalNumber(originalNumber)
  }
  
  //MARK: Formatting
  mutating func formatInternationalNumber(numberGiven:String){
    guard let iso = self.cc else {return} //No way we can build international number without cc
    let cleanNumber = cleanPhoneNumber(numberGiven)
    if let numberType = lookupPrefix(cleanNumber, iso: iso){
      switch numberType {
      case .Regular(let action):
        internationalNumber = action(cleanNumber)
      case .WithPrefix(_, let action):
        internationalNumber = action(cleanNumber)
      case .Erroneous(let errorcode, let errormessage):
        error = errormessage
        errorCode = errorcode
      case .Overcharged(_):
        warning = "Number is overcharged"
        internationalNumber = cleanNumber
      }
    }
  }
  
  /** Formats a phone number for display by the app when calling.
   - Parameters:
   - givenNumber: the raw number
   - iso: the phone number's country code
   - TODO:
   - Check if phone number's country is same as user's to decide whether or not to display international code
   */
  mutating func formatPhoneNumberWithLocalFormat(givenNumber: String)->String{
    guard let iso = self.cc else {return givenNumber}
    if let (format,leadingDigit) = countryFormat[iso] { //If we know about the specific format...
      let numberArray = Array(cleanPhoneNumber(givenNumber).characters)
      var formatArray = Array(format.characters)
      let indexOfLastNumberToCopy = leadingDigit.characters.count //Copy only up to this digit so that we can insert leading digit
      for var i = numberArray.count - 1, j = formatArray.count-1 ; j>=indexOfLastNumberToCopy && i>=indexOfLastNumberToCopy; i--,j-- {
        while( formatArray[j] != ".") {j-- ; if j<0 {break}}
        if j<0 {break}
        formatArray[j] = numberArray[i]
      }
      return leadingDigit + dropFirstN(leadingDigit.characters.count)(String(formatArray))
    }
    else { //If we don't know the format
      return givenNumber
    }
  }
  
  //MARK: Mapping functions
  ///Mapping rule for phone numbers with letters in them
  private func letterToDigit(letter: Character) -> Character{
    switch letter{
    case "a","b","c": return "2"
    case "d","e","f": return "3"
    case "g","h","i": return "4"
    case "j","k","l": return "5"
    case "m","n","o": return "6"
    case "p","q","r","s": return "7"
    case "t","u","v": return "8"
    case "w","x","y","z": return "9"
    default: return letter //if not a letter
    }
  }
  ///Remove non-digits and replace letters by digits
  private func cleanPhoneNumber(number:String) -> String {
    return String(Array(number.lowercaseString.characters).map(self.letterToDigit).filter({$0>="0" && $0<="9"}))
  }
  
  //Returns function that chops off the first n characters of a string
  private func dropFirstN(n:Int)-> (String -> String){
    return {s in String(s.characters.suffix(s.characters.count - n))}
  }
  
  //MARK: Lookup and number type
  ///Function to lookup the prefix and return the appropriate type of number. Does not yet implement overcharged numbers
  private func lookupPrefix(number:String,iso:String) -> Number? {
    if let knownPrefixes = populateKnownPhonePrefixes(iso){ //If this is successful, then ISO must exist
      let countryCode = countryCodes[iso]!
      let countryCodeLength = countryCode.characters.count //Country code length needed for each prefix lookup
      
      for var i=1; i<4; ++i{ //check prefixes of length 1,2,3
        if let numberType = knownPrefixes[String(number.characters.prefix(i+countryCodeLength))]{
          return numberType
        }
      }
      
      for var i=2; i<4; ++i{ //Check for prefix which is normally followed by a country code
        if let numberType = knownPrefixes[String(number.characters.prefix(i))]{
          return numberType //If it's there without the country code, return erroneous
        }
      }
      
      if let numberType = knownPrefixes[String(number.characters.prefix(1))]{ //Check for single 0 -- must happen after all other checks
        return numberType
      }
        
      else{
        return Number.Regular {"+"+countryCode+$0}
      }
    }
    return nil
  }
  
  //Create dictionary entries for prefix lookup
  //Entries shown in lookup order
  private func populateKnownPhonePrefixes(iso: String) -> [String:Number]?{
    if let countryCode = countryCodes[iso] {
      var dict = [String:Number]()
      dict[countryCode]       = Number.WithPrefix(""){s in return "+"+s}
      dict["0"+countryCode]   = Number.WithPrefix("0"){s in return "+"+self.dropFirstN(1)(s)}
      dict["00"+countryCode]  = Number.WithPrefix("00"){s in return "+"+self.dropFirstN(2)(s)}
      dict["011"+countryCode] = Number.WithPrefix("011"){s in return "+"+self.dropFirstN(3)(s)}
      dict["00"]              = Number.Erroneous("1","Given ISO does not match country code")
      dict["011"]             = Number.Erroneous("1","Given ISO does not match country code")
      dict["0"]               = Number.WithPrefix("0"){s in "+\(countryCode)"+self.dropFirstN(1)(s)}
      return dict
    }
    return nil
  }
  
  //***Dummy function for feteching overcharged prefixes by country from server and populating dictionary***
  private func populateOverchargedNumberPrefixes(iso:String){
    //TODO
  }
  
  /// Enumeration to distinguish between regular and overcharged numbers
  private enum Number{
    case Regular(String->String)              //(Append country code)
    case WithPrefix(String,(String)->String) //(Prefix,chopOffPrefix)
    case Overcharged(String)                //(Warning message)
    case Erroneous(String,String)          //(Error code, Error message)
  }
}


