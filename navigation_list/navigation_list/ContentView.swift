//
//  ContentView.swift
//  navigation_list
//
//  Created by 宇宣 Chen on 2021/2/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            NavigationLink(
                destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                label: {
                    List(0 ..< 20) { item in
                        Image(systemName: "star")
                            .resizable()
                            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        VStack(alignment: .leading, spacing: 0) {
                                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                                Text("hellow")
                        }
                    }
                    .navigationTitle("Navigation Bar")
                })
                    
                
           
            }
    
        }
            

        
        
  
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
