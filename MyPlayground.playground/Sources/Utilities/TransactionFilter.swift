//
//  TransactionFilter.swift
//  
//
//  Created by Fahmi Dzulqarnain on 11/11/2024.
//

// Here we learn about "Generic"
func filter<T: Equatable>(
    items: [T],
    by filter: T
) -> [T] {
    // items.filter { $0 == filter }
    return items.filter { item in
        item == filter
    }
}
