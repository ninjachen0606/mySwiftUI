//
//  ContentView.swift
//  swiftUIMap
//
//  Created by 宇宣 Chen on 2021/2/17.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                //allow mapview gets the width and height of the container
                GeometryReader { proxy in
                    
                    MapView(coordinate:
                                CLLocationCoordinate2D(latitude: 40.7128,
                                                       longitude: -74.0060))
                        .frame(width: proxy.size.width, height: proxy.size.height, alignment: .center)
                        
                               
                }
                .ignoresSafeArea()
            }
            navigationTitle("SwiftUI Map")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
