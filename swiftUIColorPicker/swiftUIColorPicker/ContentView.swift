//
//  ContentView.swift
//  swiftUIColorPicker
//
//  Created by 宇宣 Chen on 2021/2/13.
//. Reference: https://www.youtube.com/watch?v=R9bbsjTC3PU&list=PL5PR3UyfTWvfgx9W8WJ9orQf6N1tx0oxN&index=4

import SwiftUI

struct ContentView: View {
    
    @State var backgroundColor = Color(.systemBackground)
    
    var body: some View {
        
        NavigationView{
            ZStack{
                backgroundColor
                ColorPicker("Select color",
                            selection: $backgroundColor)
                    .padding()
                
            }
            .navigationTitle("Color Picker")
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
