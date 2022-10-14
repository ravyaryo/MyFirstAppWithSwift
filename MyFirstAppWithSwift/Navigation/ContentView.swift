//
//  ContentView.swift
//  MyFirstAppWithSwift
//
//  Created by Ravy Aryo on 12/10/22.
//

import SwiftUI

struct ContentView: View {
    init() {
            UITabBar.appearance().backgroundColor = UIColor.white
        }
    var body: some View {
        TabView {
            HomeView()
                .tabItem{
                Image(systemName: "house.fill")
                Text("Home")
            }
            ListView()
                .tabItem{
                    Image(systemName: "studentdesk")
                    Text("Courses")
                }
        }
        .accentColor(.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
