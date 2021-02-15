//
//  ContentView.swift
//  swiftUIChart
//
//  Created by 宇宣 Chen on 2021/2/15.
//  Reference: https://www.youtube.com/watch?v=F-dt0vOQ4Vg&list=PL5PR3UyfTWvfgx9W8WJ9orQf6N1tx0oxN&index=10
import SwiftUICharts
import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            
     
            VStack{
                Spacer()
                LineView(data: [12,22,6,1,2,18], title: "Line View")
                
                Spacer()
                //Line Chart
                LineChartView(data: [12,22,6,1,2,18],
                              title: "Line Chart")
                Spacer()
                // Bar Chart
                BarChartView(
                    data: ChartData(values: [
                                        ("Red", 12),
                                        ("Blue", 22),
                                        ("White", 52)]),
                                    title: "Bar Chart")
                // Pie Chart
                Spacer()
                PieChartView(
                    data: [23,49,10,2,19],
                    title: "Pie Chart")
                Spacer()
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
