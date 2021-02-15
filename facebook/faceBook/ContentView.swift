//
//  ContentView.swift
//  faceBook
//
//  Created by 宇宣 Chen on 2021/2/14.
//. https://www.youtube.com/watch?v=6_ojHBU_J8g&list=PL5PR3UyfTWvfgx9W8WJ9orQf6N1tx0oxN&index=7

import SwiftUI
let stories = ["story2","story3","story4","story5","story6"]

let posts: [singlePost] = [singlePost(name: "Green", post: "My god..it's him....",imageName: "auGreen"),
                           singlePost(name: "Red", post: "....", imageName: "auRed"),
                           singlePost(name: "Orange", post: "I saw Purple killed Red from cctv!!", imageName: "auOrange"),
                           singlePost(name: "Purple", post: "I saw Pink killed Back!!", imageName: "auPurple"),
                           singlePost(name: "Black", post: "I stay in cateferia all the time,not me", imageName: "auBlack"),
                           singlePost(name: "Pink", post: "I found the body", imageName: "auPink")]


struct singlePost: Hashable {
    let name:String
    let post:String
    let imageName:String
}



struct ContentView: View {
    
    @Binding var text: String
    
    let facebookBlue = UIColor(displayP3Red: 23/255.0,
                               green: 120/255.0,
                               blue: 242/255.0,
                               alpha: 1)
    
    var body: some View {
    
        
        VStack{
            HStack{
                Text("AmongUs")
                    .font(.system(size: 48, weight: .bold, design: .default))
                    .foregroundColor(Color(facebookBlue))
                
                Spacer()
                
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 48, height: 48, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(.secondaryLabel))
            }
            .padding()
            
            TextField("Search....", text: $text)
                .padding(7)
                .background(Color(.systemGray5))
                .cornerRadius(13)
                .padding(.horizontal, 15)
            ZStack{
                //this color is compatible with dark and white modes
                Color(.secondarySystemBackground)
                
                ScrollView(.vertical){
                    VStack{
                        //stories/picture view
                        storiesPost(stories: stories)
                    
                        ForEach(posts, id: \.self) { model in
                            Spacer()
                            fbPost(model: model)
                        }
                    }
                }
                Spacer()
            }
        }
    }
    

    
 
    
    
   
    

    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView(text: .constant(""))
        }
    }
}
