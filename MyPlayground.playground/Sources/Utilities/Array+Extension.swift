//
//  Array+Extension.swift
//  
//
//  Created by Fahmi Dzulqarnain on 11/11/2024.
//

// The "Element" is also the sample of generic
extension Array where Element: Summable {
    
    func totalSum() -> Double {
        // this.
        // [10, 100, 200, 250].totalSum()
        
        // initialValue = 0 + nextValue
        // initialValue = 10 + nextValue
        // initialValue = 110 + nextValue
        // ...
        // compactMap, flatMap, map
        self.reduce(0) { initialValue, nextValue in
            initialValue + nextValue.sum()
        }
    }
    
    func filter(by category: Category) -> [Element] {
        self.filter { $0.category == category }
    }
}
