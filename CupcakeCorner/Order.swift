//
//  Order.swift
//  CupcakeCorner
//
//  Created by Godwin IE on 04/12/2023.
//

import Foundation

@Observable
class Order {
    static let types = ["Vanilla", "Chocolate", "Strawberry", "Rainbow"]
    
    var type = 0
    var quantity = 3
    
    var specialRequestEnabled = false
    var extraFrosting = false
    var addSprinkles = false
}
