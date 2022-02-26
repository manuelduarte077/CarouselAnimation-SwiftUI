//
//  Food.swift
//  CarouselAnimation (iOS)
//
//  Created by Manuel Duarte on 26/2/22.
//

import SwiftUI

// Sample Data Model
struct Food: Identifiable{
    var id = UUID().uuidString
    var itemImage: String
    var itemTitle: String
}

var foods = [

    Food(itemImage: "Food1", itemTitle: "Yummy Chocolate Cake"),
    Food(itemImage: "Food2", itemTitle: "Delicious Pizza"),
    Food(itemImage: "Food3", itemTitle: "Yummy scrummy\ncarrot cake"),
    
]


