//
//  Tip.swift
//  tip-calculator
//
//  Created by Caleb Danielsen on 26.07.2023.
//

enum Tip {
    case none
    case tenPercent
    case fifteenPencent
    case twentyPercent
    case custom(value: Int)
    
    var stringValue: String {
        switch self {
        case .none:
            return ""
        case .tenPercent:
            return "10%"
        case .fifteenPencent:
            return "15%"
        case .twentyPercent:
            return "20%"
        case .custom(value: let value):
            return String(value)
        }
    }
}
