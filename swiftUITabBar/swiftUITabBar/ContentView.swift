//
//  ContentView.swift
//  swiftUITabBar
//
//  Created by 宇宣 Chen on 2021/2/16.
//  Reference: https://www.youtube.com/watch?v=Ck7uN5ZKzf8&list=PL5PR3UyfTWvfgx9W8WJ9orQf6N1tx0oxN&index=16

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.red
            }
            .navigationTitle("Home")
        }
    }
    
}

struct SettingView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue
            }
            .navigationTitle("Setting")
        }
    }
    
}

struct ContentView: View {
    var body: some View {
        //tabview controls a HomeView and SettingView
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            SettingView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Setting")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
