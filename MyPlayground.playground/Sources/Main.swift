//
//  Main.swift
//  
//
//  Created by Fahmi Dzulqarnain on 11/11/2024.
//

public func run() {
    // 2000 or 2_000
    let initialBalance: Double = 2_000
    let controller = FinanceController(totalBalance: initialBalance)
    
    print("Initial Balance: \(initialBalance)")
    
    do {
        try controller.addTransaction(
            Transaction(
                amount: 10,
                category: .food,
                description: "Nasi Ayam"
            )
        )
        try controller.addTransaction(
            Transaction(
                amount: 100,
                category: .income
            )
        )
    } catch let error as TransactionError {
        print(error.description)
    } catch let error {
        print(error.localizedDescription)
    }
    
    for transaction in controller.transactions {
        print("\(transaction.date) - \(transaction.amount) \(transaction.category)")
    }
    
    // String interpolation
    // "Hello \(name)"
    print("Total Income: \(controller.totalIncome)")
    print("Total Expense: \(controller.totalExpense)")
    print("Total Balance: \(controller.totalBalance)")
}
