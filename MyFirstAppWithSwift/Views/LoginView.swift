//
//  LoginView.swift
//  MyFirstAppWithSwift
//
//  Created by Ravy Aryo on 18/10/22.
//

import SwiftUI
let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
struct LoginView: View {
    @State private var showContentView = false
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        NavigationView{
            VStack {
                UsernameTextField(username: $username)
                PasswordTextField(password: $password)
                NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)){
                    Text("LOGIN")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 220, height: 60)
                        .background(Color.green)
                        .cornerRadius(15.0)
                }
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
        }
    }

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct UsernameTextField: View {
    @Binding var username:String
    var body: some View {
        TextField("Username", text: $username)
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .background(lightGreyColor)
            .cornerRadius(/*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
            .padding(.bottom,20)
    }
}

struct PasswordTextField: View {
    @Binding var password:String
    var body: some View {
        SecureField("Password", text: $password)
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .background(lightGreyColor)
            .cornerRadius(/*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
            .padding(.bottom,20)
    }
}
