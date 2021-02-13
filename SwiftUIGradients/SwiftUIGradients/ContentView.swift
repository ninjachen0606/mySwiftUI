//
//  ContentView.swift
//  SwiftUIGradients
//
//  Created by 宇宣 Chen on 2021/2/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors:[
                Color("myColor"),
                Color.purple
            ]),
            startPoint: .top,
            endPoint: .bottom)
            .ignoresSafeArea(.all, edges: .all)
            
            VStack {
                Image(systemName: "sun.max.fill")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding()
                Text("Sunny!")
                    .font(.system(size: 40,
                                  weight: .semibold,
                                  design: .default))
                    .foregroundColor(.white)
            Spacer()
            }
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
