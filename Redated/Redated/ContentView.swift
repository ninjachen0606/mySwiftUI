//
//  ContentView.swift
//  Redated
//
//  Created by 宇宣 Chen on 2021/2/19.
//  Reference:https://www.youtube.com/watch?v=5yHXcnn0KFY&list=PL5PR3UyfTWvfgx9W8WJ9orQf6N1tx0oxN&index=36

import SwiftUI

struct ContentView: View {
    
    
    @State var isLoading = true
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(0...10, id: \.self) { _ in
                        PostView()
                            .frame(height: 150)
                            .padding(12)
                          //being unredated, use [] instead of .placeholder
//                          .redacted(reason: .placeholder)
                    }
                }
                .redacted(reason: isLoading ? .placeholder : [])
            }
            .navigationTitle("Among Us Profile")
            .onAppear(perform: {
                fetchDate()
            })
        }
    }
    //call this function once scrollview appears
    func fetchDate() {
        DispatchQueue.main.asyncAfter(deadline: .now()+4) {
            isLoading = false
        }
    }
}

struct PostView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("image1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 55, height: 55, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    //.unredacted()
                
                Text("Red")
                    .bold()
                    .font(.system(size: 22))
            }
            
            Text("This is a super duper long post with a bit of text for this awesome SwiftUI video!!")
                .font(.system(size: 24))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
