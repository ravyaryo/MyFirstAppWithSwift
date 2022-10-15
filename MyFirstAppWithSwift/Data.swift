//
//  Data.swift
//  MyFirstAppWithSwift
//
//  Created by Ravy Aryo on 14/10/22.
//

import SwiftUI

struct Item: Identifiable{
    var id = UUID()
    var title: String
    var text : String
    var image : String
    
    static let example = Item(title: "Resep Telor Balado", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", image: "telor balado")
}

var items = [
    Item(title: "Resep Omelette Terbaik", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", image: "test omelette"),
    Item(title: "Resep Telor Balado", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", image: "telor balado"),
    Item(title: "Resep Telor Rebus", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", image: "Telor Rebus")
]
