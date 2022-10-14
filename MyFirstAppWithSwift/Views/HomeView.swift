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
                        ForEach(items) { item in
                            NavigationLink(destination:
                                DetailView()) {
                                CardView(item: item)
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
