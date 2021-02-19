//
//  ContentView.swift
//  Links
//
//  Created by 宇宣 Chen on 2021/2/19.
//  Reference: https://www.youtube.com/watch?v=gtfUrJjEUv4&list=PL5PR3UyfTWvfgx9W8WJ9orQf6N1tx0oxN&index=37

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                //                Form {
                //                    Link("Open a Link",
                //                         destination: URL(string: "https://www.google.com/")!)
                //                    Link("Open a Link",
                //                         destination: URL(string: "https://www.google.com/")!)
                //                }
                Link(destination: URL(string: "https://www.apple.com")!,
                     label: {
                        Label(
                            title: {
                                Text("Search Google")
                                    .bold()
                            },
                            icon: { Image(systemName: "magnifyingglass")
                                .font(.system(size: 22, weight: .bold, design: .default))
                            }
                        )
                        .frame(width: 250, height: 50, alignment: .center)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                     })
            }
            .navigationTitle("Link")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
