import UIKit

// $1 USD to $1.34 CAD
// $1 USD to $20.11 MXN

enum Currency {
    case cad
    case mxn
}

let usToCad = 1.34
let usToMxn = 20.11

var currency: Currency = .cad

func convert(_ dollars: Double) -> Double {
    let convertedValue: Double
    if currency == .cad {
        convertedValue = dollars * usToCad
    } else {
        convertedValue = dollars * usToMxn
    }
    return convertedValue
}

func convert(amountString: String) -> String? {
    guard let amount = Double(amountString) else {
        return nil
    }
    return String(convert(amount))
}

if let oneDollarToCad = convert(amountString: "1") {
    print(oneDollarToCad)
}

if let dollarsToCad = convert(amountString: "Hello, I'd like to convert today, please") {
    print(dollarsToCad)
}

if let fiveDollarsToCad = convert(amountString: "5") {
    print(fiveDollarsToCad)
}

currency = .mxn

if let oneDollarToMxn = convert(amountString: "1") {
    print(oneDollarToMxn)
}

if let dollarsToMxn = convert(amountString: "Hello world") {
    print(dollarsToMxn)
}

if let fiveDollarsToMxn = convert(amountString: "5") {
    print(fiveDollarsToMxn)
}

