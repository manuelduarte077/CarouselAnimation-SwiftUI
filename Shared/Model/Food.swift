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
    var itemHour: String
    var itemPrice: String
}

var foods = [

    Food(itemImage: "Food1", itemTitle: "Yummy Chocolate Cake", itemHour:  "4 Hours", itemPrice: "C$: 100"),
    Food(itemImage: "Food2", itemTitle: "Chocolate Hershey", itemHour: "1 Hours", itemPrice: "C$: 150"),
    Food(itemImage: "Food3", itemTitle: "Yummy scrummy\ncarrot cake", itemHour: "2 Hours", itemPrice: "C$: 120"),
    
]


