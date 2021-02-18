//
//  ContentView.swift
//  MapSwiftUIOnly
//
//  Created by 宇宣 Chen on 2021/2/19.
//  Reference: https://www.youtube.com/watch?v=S-ruBuZRrDs&list=PL5PR3UyfTWvfgx9W8WJ9orQf6N1tx0oxN&index=32
import MapKit
import SwiftUI

struct ContentView: View {
    
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 23.33,
                                       longitude: 121.01),
        span: MKCoordinateSpan(latitudeDelta: 40,
                               longitudeDelta: 40
        )
    )
    
    var body: some View {
        NavigationView {
            VStack {
                Map(coordinateRegion: $region)
                Button(action: {
                    withAnimation {
                        region.span = MKCoordinateSpan(
                            latitudeDelta: 5,
                            longitudeDelta: 5)
                    }
                }, label: {
                    Text("Zoom In")
                        .frame(width: 250,
                               height: 50,
                               alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.green)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                    
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
