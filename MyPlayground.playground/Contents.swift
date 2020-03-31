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
    
    if currency == .cad {
        let money = dollars * usToCad
        return money
    } else {
        let money = dollars * usToMxn
        return money
    }
}

func convert(amountString: String) -> String? {
    guard let amount: Double = Double(amountString) else { return nil }
    
    let money = convert(amount)
    
    return "\(money)"
    
}

convert(12)
convert(amountString: "12")

currency = .mxn

convert(12)
convert(amountString: "12")
