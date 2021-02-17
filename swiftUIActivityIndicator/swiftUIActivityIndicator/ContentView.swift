//
//  ContentView.swift
//  swiftUIActivityIndicator
//
//  Created by 宇宣 Chen on 2021/2/17.
//  Repo: https://github.com/exyte/ActivityIndicatorView
//  Reference: https://www.youtube.com/watch?v=cOmHFiut5J0&list=PL5PR3UyfTWvfgx9W8WJ9orQf6N1tx0oxN&index=20
import ActivityIndicatorView
import SwiftUI

struct ContentView: View {
    @State var loading = false
    var body: some View {
        
        
        NavigationView {
            VStack {
                ActivityIndicatorView(isVisible: $loading,
                                      type: .scalingDots)
                    .foregroundColor(.orange)
                    .frame(width: 100,
                           height: 100,
                           alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                ActivityIndicatorView(isVisible: $loading,
                                      type: .equalizer)
                    .foregroundColor(.orange)
                    .frame(width: 100,
                           height: 100,
                           alignment: .center)
                ActivityIndicatorView(isVisible: $loading,
                                      type: .growingCircle)
                    .foregroundColor(.orange)
                    .frame(width: 100,
                           height: 100,
                           alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Button(action: {
                    self.loading.toggle()
                }, label: {
                    Text("Load Data")
                        .bold()
                        .frame(width: 220, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                })
                }
            }
            .navigationTitle("Home")
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
