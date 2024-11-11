//
//  Transaction.swift
//  
//
//  Created by Fahmi Dzulqarnain on 11/11/2024.
//

import Foundation

// Kotlin - data class
// Typescript - interface or class

// Struct doesn't need an init
struct Transaction: Summable {
    let id: UUID = UUID()
    var date: Date = Date()
    var amount: Double = 0.0
    var category: Category
    var description: String? // "?" will mark variable as nullable
    
    func sum() -> Double {
        amount
    }
}
