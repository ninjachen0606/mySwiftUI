//
//  ContentView.swift
//  swiftUIDownloadImage
//
//  Created by 宇宣 Chen on 2021/2/17.
//  Reference: https://www.youtube.com/watch?v=5HmUO3ZCbt4&list=PL5PR3UyfTWvfgx9W8WJ9orQf6N1tx0oxN&index=18
import SwURL
import SwiftUI

struct ContentView: View {
    
    init() {
        SwURL.setImageCache(type: .persistent )
    }
    
    var body: some View {
        NavigationView {
            VStack {
                
                RemoteImageView(url: URL(string: "https://static.newmobilelife.com/wp-content/uploads/2020/09/Among-Us-1.jpg")!, placeholderImage: Image(systemName: "photo"),
                    transition: .custom(transition: .opacity,
                         animation: .easeIn(duration: 0.25)))
                    .progress({progress in
                        return Text("Loading \(progress)")
                    })
                    .aspectRatio(contentMode: .fit)
                
                Text("Loading Image")
            }
            .navigationTitle("Welcome")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
