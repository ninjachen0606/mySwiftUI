//
//  storyView.swift
//  faceBook
//
//  Created by 宇宣 Chen on 2021/2/14.
//

import Foundation
import SwiftUI

struct storiesPost:View {
    
    let stories: [String]
    
    @State private var showingAlert = false
    
    var body: some View{
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 3){
                    ForEach(stories, id: \.self){ index in
                        Image(index)
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(width: 140, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.red)
                            //clip the picture to its bounding frame
                            .clipped()
                            .onTapGesture(perform: {
                                if index == "story5"{
                                    showingAlert = true
                                }
                            })
                            .alert(isPresented: $showingAlert){
                                Alert(title: Text("I am the Imposter"), message: Text("You got me!!"), dismissButton: .default(Text("Victory")))
                            }
                        
                        Spacer()
                    }
                    
                }
                .padding()
            }
        
    }
}
