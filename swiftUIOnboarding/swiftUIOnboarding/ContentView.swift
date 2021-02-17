//
//  ContentView.swift
//  swiftUIOnboarding
//
//  Created by 宇宣 Chen on 2021/2/17.
//  Repo: https://github.com/exyte/ConcentricOnboarding
//  Reference: https://www.youtube.com/watch?v=z1GtiOu9h3o&list=PL5PR3UyfTWvfgx9W8WJ9orQf6N1tx0oxN&index=19

import ConcentricOnboarding
import SwiftUI

struct ContentView: View {
    var body: some View {
        //the number of elements in those arrays need to match the number of pages we have
        ConcentricOnboardingView(
            pages: [AnyView(OnboardingPage(title: "Send Messages",
                                           msg: "Chat with all of your friends and send messages in group!",
                                           imageName: "message")),
                    AnyView(OnboardingPage(title: "Notifications",
                                                   msg: "Enable push notifications to stay up to date with friends and family.",
                                                   imageName: "bell")),
                    AnyView(OnboardingPage(title: "Profile",
                                                   msg: "Customize your profile page to show others what you are into!",
                                                   imageName: "person.circle"))
            ],
            bgColors: [.pink,.blue,.orange],
            duration: 2.0)
    }
}


struct OnboardingPage: View {
    
    var title:String
    var msg: String
    var imageName:String
    
    var body: some View {
        
            VStack {
                Spacer()
                Text(title)
                    .font(.system(size: 40))
                    .bold()
                    .foregroundColor(.white)
                Image(systemName: imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 75, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .padding(100)
                Text("Some long msg goes in here!")
                    .font(.system(size: 28, weight: .light, design: .default))
                    .padding()
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Spacer()
                Spacer()
            }
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
