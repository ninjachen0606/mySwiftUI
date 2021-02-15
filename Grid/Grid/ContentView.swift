//
//  ContentView.swift
//  Grid
//
//  Created by 宇宣 Chen on 2021/2/15.
//  Reference: https://www.youtube.com/watch?v=tE2I5Yqu_OA&list=PL5PR3UyfTWvfgx9W8WJ9orQf6N1tx0oxN&index=9

import SwiftUI

struct ContentView: View {
    let items = Array(1...1000).map({ "image\($0)"})
    //.flexible||adaptive
    let layout = [
        GridItem(.flexible(minimum: 100)),
        GridItem(.flexible(minimum: 100)),
        GridItem(.flexible(minimum: 100))
    ]
    var body: some View {
        NavigationView {
            ScrollView {
                    LazyVGrid(columns: layout, content: {
                    ForEach(items, id: \.self) { item in
                        VStack{
                            Image(item)
                                .resizable()
                                .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .aspectRatio(contentMode: .fit)
                                .border(Color.secondary)
                                .cornerRadius(12)

                            Button("Get"){
                                //
                            }
                            Spacer()

                        }

                    }
                })
            }
            .navigationTitle("Among Us Store")
            .font(.system(.subheadline))
        }
 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
