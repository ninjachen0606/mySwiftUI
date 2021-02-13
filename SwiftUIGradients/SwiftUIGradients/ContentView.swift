//
//  ContentView.swift
//  SwiftUIGradients
//
//  Created by 宇宣 Chen on 2021/2/13.
//  Reference: https://www.youtube.com/watch?v=V93lFg4fedY&list=PL5PR3UyfTWvfgx9W8WJ9orQf6N1tx0oxN&index=6

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
            //allow image to be full screen
            .ignoresSafeArea(.all, edges: .all)
            
            VStack {
                Image(systemName: "sun.max.fill")
                    .resizable()
                    //renderingMode must be coded first before .frame
                    .renderingMode(.original)
                    .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding()
                Text("Sunny!")
                    .font(.system(size: 40,
                                  weight: .semibold,
                                  design: .default))
                    .foregroundColor(.white)
            //Spacer automatically fill up all available space on their axis of expansion.
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
