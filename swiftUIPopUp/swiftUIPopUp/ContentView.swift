//
//  ContentView.swift
//  swiftUIPopUp
//
//  Created by 宇宣 Chen on 2021/2/17.
//  Repo: https://github.com/exyte/PopupView
//  Reference: https://www.youtube.com/watch?v=87k_1mksg4o&list=PL5PR3UyfTWvfgx9W8WJ9orQf6N1tx0oxN&index=22
import PopupView
import SwiftUI

struct ContentView: View {
    
    @State var isShowingPopUp = false
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    self.isShowingPopUp = true
                }, label: {
                    Text("Show Pop Up")
                        .frame(width: 220, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.green)
                        .cornerRadius(8)
                        .padding()
                })
            }
            .navigationTitle("SwiftUI Toasts")
            
            .popup(isPresented: $isShowingPopUp, type: .toast, position: .bottom, animation: .easeOut, autohideIn: 3, closeOnTap: true, closeOnTapOutside: false, view: {
                Taost()
            })
        }
    }
}


struct Taost:View {
    var body: some View {
        ZStack {
            Color.blue
            HStack {
                Image(systemName: "bell")
                    .resizable()
                    .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .padding()
                Text("You have 32 new messages waiting for you")
                    .foregroundColor(.white)
            }
            .padding()
        }
        .cornerRadius(12)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
