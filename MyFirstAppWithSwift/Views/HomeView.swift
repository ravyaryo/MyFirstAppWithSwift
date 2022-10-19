//
//  HomeView.swift
//  MyFirstAppWithSwift
//
//  Created by Ravy Aryo on 13/10/22.
//

import SwiftUI

struct HomeView: View {
    @State var searchfield: String = ""
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HeaderView()
                SearchBarView()
                ScrollView(.vertical,showsIndicators: true) {
                    VStack (alignment: .leading) {
                        Text("Find Recipe")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding([.top, .leading])
                        ScrollView(.horizontal,showsIndicators: false) {
                           CardView()
                        }.shadow(radius: 10)
                        Text("Recomendation")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding([.top, .leading])
                            .padding()
                    }
                }
            }
        }
    }
    @ViewBuilder
    func HeaderView()->some View{
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                Text("Welcome 😁")
                    .font(.title)
                Text("Ravy Aryo")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            Button{
                
            }label: {
                Image (systemName: "bell")
                    .font(.title3)
                    .padding(17.0)
                    .fontWeight(.semibold)
                    .foregroundColor(.green)
                    .background{RoundedRectangle(cornerRadius: 10,style: .continuous).fill(.white)}
                
            }
        }.padding(.trailing)
    }
    @ViewBuilder
    func SearchBarView()->some View{
        HStack(spacing: 15) {
            HStack(spacing: 15) {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24.0)
                Divider()
                    .frame(width: 0.0, height: 30.0)
                TextField("Search", text: $searchfield)
            }
            .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
            .background{
                RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.white)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
