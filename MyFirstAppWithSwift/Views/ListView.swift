//
//  ListView.swift
//  MyFirstAppWithSwift
//
//  Created by Ravy Aryo on 13/10/22.
//

import SwiftUI

struct ListView: View {
    @State var cards: [Card] = CardList.items
    @State var show = false
    var body: some View {
        NavigationView {
            ListCourse(cards: $cards)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

struct ListCourse: View {
    @Binding var cards:[Card] 
    var body: some View {
        List {
            ForEach(cards, id: \.id) { card in
                NavigationLink(destination:
                                DetailView(card: card)) {
                    HStack {
                        Image(card.image)
                        VStack(alignment: .leading, spacing: 8.0) {
                            Text(card.title)
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit")
                        }
                        .padding(.vertical)
                    }
                }
            }
        }
        .navigationTitle("Courses")
    }
}
