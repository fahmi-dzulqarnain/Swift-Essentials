//
//  FinanceController.swift
//  
//
//  Created by Fahmi Dzulqarnain on 11/11/2024.
//

class FinanceController {
    var transactions: [Transaction] = []
    var totalBalance: Double 
    
    init(totalBalance: Double) {
        self.totalBalance = totalBalance
    }
    
    func addTransaction(_ transaction: Transaction) throws {
        
        guard transaction.amount > 0 else {
            throw TransactionError.invalidAmount
        }
        
        transactions.append(transaction)
        // Ternary operator
        totalBalance += transaction.category == .income
            ? transaction.amount
            : -transaction.amount
    }
    
    // computed variable
    var totalIncome: Double {
        transactions
            .filter(by: .income)
            .totalSum()
    }
    
    // computed variable
    var totalExpense: Double {
        transactions
            .filter { $0.category != .income }
            .totalSum()
    }
}
