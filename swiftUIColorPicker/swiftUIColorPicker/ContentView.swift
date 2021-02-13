//
//  ContentView.swift
//  swiftUIColorPicker
//
//  Created by 宇宣 Chen on 2021/2/13.
//

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
