//
//  Category.swift
//  
//
//  Created by Fahmi Dzulqarnain on 11/11/2024.
//

import Foundation

enum Category: Equatable {
    case food, drink,
         transport, entertainment,
         education, health, shopping
    case income
    case other(String)
}
