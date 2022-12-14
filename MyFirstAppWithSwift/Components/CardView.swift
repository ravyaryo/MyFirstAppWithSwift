//
//  CardView.swift
//  MyFirstAppWithSwift
//
//  Created by Ravy Aryo on 13/10/22.
//

import SwiftUI

struct CardView: View {
    var cards: [Card] = CardList.items
    var body: some View {
        HStack(spacing: 16.0) {
            ForEach(cards, id: \.id) { card in
                NavigationLink(destination:
                                DetailView(card: card)) {
                    VStack(alignment: .leading, spacing: 8.0) {
                        Image(card.image)
                            .resizable()
                            .aspectRatio(contentMode:.fit)
                            .frame(height: 128.0)
                            .frame(maxWidth: .infinity)
                        Text(card.title)
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        Text(card.text)
                            .multilineTextAlignment(.leading)
                            .lineLimit(2)
                            .opacity(0.7)
                        Text("20 Section - 3 Hours")
                            .multilineTextAlignment(.leading)
                            .opacity(0.7)
                    }
                    .foregroundColor(Color.white)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .frame(width: 252.0, height: 329.0)
                    .background(Color(#colorLiteral(red: 0.13725490868091583, green: 0.7058823704719543, blue: 0.3450980484485626, alpha: 1)))
                    .cornerRadius(/*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
                }
            }
            .padding(.leading)
        }
        }
    }
    
    struct CardView_Previews: PreviewProvider {
        static var previews: some View {
            CardView()
        }
    }

