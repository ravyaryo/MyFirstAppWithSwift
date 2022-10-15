//
//  DetailView.swift
//  MyFirstAppWithSwift
//
//  Created by Ravy Aryo on 13/10/22.
//

import SwiftUI

struct DetailView: View {
    var card: Card
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 8.0) {
                Image(card.image)
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .frame(height: 128.0)
                    .frame(maxWidth: .infinity)
                Text(card.title)
                    .font(.title)
                    .fontWeight(.bold)
                Text(card.text)
                    .lineLimit(2)
                    .opacity(0.7)
                Text("20 Section - 3 Hours")
                    .opacity(0.7)
            }
            .foregroundColor(Color.white)
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .background(Color(#colorLiteral(red: 0.13725490868091583, green: 0.7058823704719543, blue: 0.3450980484485626, alpha: 1)))
            VStack(alignment: .leading, spacing: 16.0) {
                Text("Today we gonna learn about this recipe.")
                    .font(.headline)
                Text("This Course ")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?")
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(card: CardList.items.first!)
    }
}
