//
//  TransactionError.swift
//  
//
//  Created by Fahmi Dzulqarnain on 11/11/2024.
//

enum TransactionError: Error {
    case invalidAmount
    case insufficientBalance
    
    // Computed Variable
    var description: String {
        // in other language, self is the same as this
        // Control Flow 1
        switch self {
        case .invalidAmount:
            return "Invalid amount"
        case .insufficientBalance:
            return "Insufficient balance"
        default:
            return "Unknown error"
        }
    }
}
