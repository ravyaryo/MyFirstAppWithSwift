//
//  ListItem.swift
//  MyFirstAppWithSwift
//
//  Created by Ravy Aryo on 14/10/22.
//

import SwiftUI

struct ListItem: View {
    var item: Item = items[0]
    var body: some View {
        HStack {
            Image(item.image)
            VStack(alignment: .leading, spacing: 8.0) {
                Text(item.title)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit")
            }
            .padding(.vertical)
        }
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListItem()
    }
}
