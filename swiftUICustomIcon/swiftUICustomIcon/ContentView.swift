//
//  ContentView.swift
//  swiftUICustomIcon
//
//  Created by 宇宣 Chen on 2021/2/17.
//  Repo: https://github.com/huybuidac/SwiftUIFontIcon
//  Reference: https://www.youtube.com/watch?v=2uQlu4qKpeA&list=PL5PR3UyfTWvfgx9W8WJ9orQf6N1tx0oxN&index=21
import SwiftUI
import SwiftUIFontIcon


struct ContentView: View {
    
    @State var updateBg = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Material Icon (Assistant)")
                    Spacer()
                    FontIcon.text(.materialIcon(code: .assistant),
                                  fontsize: 45,
                                  color: .blue)
                }.padding()
                HStack {
                    Text("Material Icon (Assistant)")
                    Spacer()
                    FontIcon.button(.ionicon(code: .ios_add_circle), action: {
                        self.updateBg.toggle()
                    }, padding: 0, fontsize: 45, color: .pink)
                }.padding()
                HStack {
                    Text("Material Icon (Assistant)")
                    Spacer()
                    FontIcon.text(.materialIcon(code: .apps),
                                  fontsize: 45,
                                  color: .blue)
                }.padding()
                
            }
            .background(updateBg ? Color.orange : Color.green)
            .navigationTitle("Custom Icons")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
