//
//  ContentView.swift
//  swiftUILottieAnimation
//
//  Created by 宇宣 Chen on 2021/2/16.
//  Reference: https://www.youtube.com/watch?v=k3-yJrmUrbk&list=PL5PR3UyfTWvfgx9W8WJ9orQf6N1tx0oxN&index=17

import SwiftUI



/*
 - Bring in lottie lib
 - Create custom reusable view
 - Update some project settings
 - Bring some dope animation
*/



struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Wait a minute")
                    .font(.subheadline)
                LottieView(fileName: "loading")
                    .frame(width: 50,
                           height: 50,
                           alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
