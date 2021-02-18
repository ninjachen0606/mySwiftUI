//
//  ContentView.swift
//  appStorage
//
//  Created by 宇宣 Chen on 2021/2/18.
//  Reference: https://www.youtube.com/watch?v=Lp5Y0NlJ-h8&list=PL5PR3UyfTWvfgx9W8WJ9orQf6N1tx0oxN&index=30

import SwiftUI

struct settings {
    static let firstNameKey = "firstName"
    static let lastNameKey = "lastName"
    static let isSubscribedKey = "isSubscriber"
}

struct ContentView: View {
    //store data into this app storage
    @AppStorage(settings.firstNameKey) var firstName = ""
    @AppStorage(settings.lastNameKey) var lastName = ""
    @AppStorage(settings.isSubscribedKey) var isSubscriber = false
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Details")) {
                        TextField("First Name", text: $firstName)
                        TextField("Last Name", text: $lastName)
                    }
                    Section(header: Text("Member Status")) {
                        Toggle("Is Subscribed", isOn: $isSubscriber)
                    }
                }
            }
            .navigationTitle("AppStorage")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
