//
//  ContentView.swift
//  swiftUIDatePicker
//
//  Created by 宇宣 Chen on 2021/2/18.
//  Reference: https://www.youtube.com/watch?v=8MuesUoG-Nc&list=PL5PR3UyfTWvfgx9W8WJ9orQf6N1tx0oxN&index=25

import SwiftUI

struct ContentView: View {
    @State var date = Date()
    var body: some View {
        NavigationView{
            VStack {
                DatePicker("Trip Date",
                           selection: $date,
                           //current date to a specific date
                           in: Date()...Date().addingTimeInterval(1200000),
                           displayedComponents: .date)
                    //optional, pop up a calender
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .padding()
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
