//
//  Data.swift
//  MyFirstAppWithSwift
//
//  Created by Ravy Aryo on 14/10/22.
//

import SwiftUI

struct Card: Identifiable{
    var id = UUID()
    var title: String
    var text : String
    var image : String
    
}
struct CardList {
    static let items = [
        Card(title: "Resep Omelette Terbaik", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", image: "test omelette"),
        Card(title: "Resep Telor Balado", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", image: "telor balado"),
        Card(title: "Resep Telor Rebus", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", image: "Telor Rebus")
    ]
}
