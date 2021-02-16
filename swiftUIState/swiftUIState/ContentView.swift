//
//  ContentView.swift
//  swiftUIState
//
//  Created by 宇宣 Chen on 2021/2/16.
//

import SwiftUI

struct ContentView: View {
    
    
    
    let iamges: [Image] = [
        Image("image1"),
        Image("image1"),
        Image("image1")
    ]
    
    @State var isZoomed : Bool = false
    
    var body: some View {
        NavigationView {
            List(0 ..< 3) { index in
                NavigationLink(
                    
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
            if self.colorIndex < 2 {
                self.colorIndex += 1
            }
            else{
                self.colorIndex = 0
            }
        

    }
}
}
