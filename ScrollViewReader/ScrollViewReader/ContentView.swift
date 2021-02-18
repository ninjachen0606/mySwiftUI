//
//  ContentView.swift
//  ScrollViewReader
//
//  Created by 宇宣 Chen on 2021/2/19.
//  Reference: https://www.youtube.com/watch?v=asi9EzPgAJE&list=PL5PR3UyfTWvfgx9W8WJ9orQf6N1tx0oxN&index=35

import SwiftUI

struct ContentView: View {
    
    let ToNumber = 22
    
    var body: some View {
        NavigationView {
            //proxy(scrollView) is a lightweight reference of scrollview
            ScrollViewReader { scrollView in
                ScrollView {
                    VStack(alignment: .leading) {
                        Button(action: {
                            withAnimation{
                                //scrollTo: allows scroll to another child view that has an id of one
                                scrollView.scrollTo(ToNumber, anchor: .center)
                            }
                        }, label: {
                            Text("Scroll To \(ToNumber)")
                        })
                        ForEach(0...1000, id: \.self) { num in
                            HStack {
                                Label(
                                    title: { Text("Position: \(num)") },
                                    icon: { Image(systemName: "house") }
                                )
                                Spacer()
                            }
                            //generate ID
                            .id(num)
                            .padding()
                        }
                    }
                }
            }
            .navigationTitle("Scroll View")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
