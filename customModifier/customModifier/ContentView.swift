//
//  ContentView.swift
//  customModifier
//
//  Created by 宇宣 Chen on 2021/2/18.
//  Reference: https://www.youtube.com/watch?v=YyVa07vjGk0&list=PL5PR3UyfTWvfgx9W8WJ9orQf6N1tx0oxN&index=28

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "house")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .iconStyle()
                
                Text("Custom Modifers are cool!")
                    .modifier(LabelStyle())
                    
            }
            .navigationTitle("Custom Modifier")
        }
    }
    
    
}



//this way is for reducing redundancy, it is optional
extension View {
    // add some View
    func iconStyle() -> some View {
        self.modifier(IconStyle())
    }
}

extension View {
    func labelStyle() -> some View {
        self.modifier(LabelStyle())
    }
}



struct LabelStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 24))
            .background(Color.blue)
            .foregroundColor(.white)
    }
}


struct IconStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color(.systemPink))
            .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


