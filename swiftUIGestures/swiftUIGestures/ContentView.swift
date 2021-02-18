//
//  ContentView.swift
//  swiftUIGestures
//
//  Created by 宇宣 Chen on 2021/2/19.
//  Reference: https://www.youtube.com/watch?v=0mIsCXT41-c&list=PL5PR3UyfTWvfgx9W8WJ9orQf6N1tx0oxN&index=33

import SwiftUI

struct ContentView: View {
    @GestureState var isLongPressed = false
    @State var offset: CGSize = .zero
    var body: some View {
        
        //modifier to get the state get out of gestures
        let longPressGesture = LongPressGesture()
            .updating($isLongPressed) { newValue, state, transaction in
                state = newValue
            }
        
        //modifier to get the state get out of gestures
        let dragGesture = DragGesture()
            //.onEnd
            .onChanged { value in
                self.offset = value.translation
            }
        
        
        NavigationView {
            VStack {
                Circle()
                    .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(isLongPressed ? Color.orange: Color.blue)
                    .scaleEffect(isLongPressed ? 2:1)
                    .offset(x: offset.width, y: offset.height)
                    .gesture(dragGesture)
                    .animation(.spring())
            }
            .navigationTitle("Gestures")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
