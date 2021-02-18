//
//  SwiftUIView.swift
//  swiftUIInUIKit
//
//  Created by 宇宣 Chen on 2021/2/19.
//  Reference: https://www.youtube.com/watch?v=diK5WkGpCUE&list=PL5PR3UyfTWvfgx9W8WJ9orQf6N1tx0oxN&index=34

import SwiftUI

struct SwiftUIView: View {
    
    @State var isOn = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Form {
                        Toggle(isOn: $isOn, label: {
                            Text("Is Subscriber")
                        })
                        Toggle(isOn: $isOn, label: {
                            Text("Is Subscriber")
                        })
                        Toggle(isOn: $isOn, label: {
                            Text("Is Subscriber")
                        })
                    }
                    Spacer()
                    
                    
                }
            }
            .navigationTitle("Settings")
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
