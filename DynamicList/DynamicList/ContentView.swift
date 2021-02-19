//
//  ContentView.swift
//  DynamicList
//
//  Created by 宇宣 Chen on 2021/2/19.
//  Reference:https://www.youtube.com/watch?v=JCez4mclzdQ&list=PL5PR3UyfTWvfgx9W8WJ9orQf6N1tx0oxN&index=38

import SwiftUI

struct Stock: Identifiable{
    let id = UUID()
    let title:String
}

class StockViewModel: ObservableObject {
    @Published var stock: [Stock] = [
        Stock(title: "Apple"),
        Stock(title: "Google"),
        Stock(title: "Amazon"),
        Stock(title: "Yahoo")
    ]
}

struct ContentView: View {
    
    @StateObject var viewModel = StockViewModel()
    @State var text = ""
    
    var body: some View {
        
        NavigationView {
            VStack {
                Section(header: Text("Add New Stock")){
                    TextField("Comany Name", text: $text)
                        .padding()
                    Button(action: {
                        tryToAddToList()
                    }, label: {
                        Text("Add")
                            .frame(width: 250, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.green)
                            .cornerRadius(8)
                            .foregroundColor(.white)
                    })
                }
                
                List {
                    ForEach(viewModel.stock) { stock in
                        StockRow(title: stock.title)
                    }
                }
                
            }
            .navigationTitle("Stocks")
        }

    }
    
    
    func tryToAddToList() {
        guard !text.trimmingCharacters(in: .whitespaces).isEmpty else {
            return
        }
        
        let newStock = Stock(title: text)
        viewModel.stock.append(newStock)
        text = ""
        
        return
    }
}

struct StockRow: View {
    
    let title:String
    
    var body: some View {
        Label(
            title: { Text(title) },
            icon: { Image(systemName: "chart.bar") }
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
