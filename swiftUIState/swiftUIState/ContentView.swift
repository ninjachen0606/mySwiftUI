//
//  ContentView.swift
//  swiftUIState
//
//  Created by 宇宣 Chen on 2021/2/16.
//. Reference: https://www.youtube.com/watch?v=5G7IVEYtaxo&list=PL5PR3UyfTWvfgx9W8WJ9orQf6N1tx0oxN&index=13

import SwiftUI

struct ContentView: View {
    
    
    
    let iamges: [Image] = [
        Image("image1"),
        Image("image1"),
        Image("image1")
    ]
    
    
    var body: some View {
        NavigationView {
            List(0 ..< 3) { index in
                NavigationLink(
                    // Use extract subview by command + left key
                    destination: MyImageView(image: self.iamges[index], colorIndex: index)) {
                    Text("\(index+1)")
                }
            }
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iphone x"))
        }
    }
}

struct MyImageView: View {
    let image: Image
    @State var colorIndex: Int
    let color = [
        Color.red,
        Color.blue,
        Color.black

    ]
    var body: some View {
        VStack{
            Spacer()
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
            Spacer()
        }
        
        .background(color[colorIndex])
        .onTapGesture {
            //the below if else prevents index out of range
            if self.colorIndex < 2 {
                self.colorIndex += 1
            }
            else{
                self.colorIndex = 0
            }
        

    }
}
}
