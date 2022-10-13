//
//  HomeView.swift
//  MyFirstAppWithSwift
//
//  Created by Ravy Aryo on 13/10/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators: true) {
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack(spacing: 16){
                        ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                            NavigationLink(destination:
                                DetailView()) {
                                CardView()
                            }
                        }
                    }
                    .padding()
                }
                .navigationTitle("Learn to Cook")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
