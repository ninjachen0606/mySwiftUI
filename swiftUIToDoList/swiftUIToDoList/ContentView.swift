//
//  ContentView.swift
//  swiftUIToDoList
//
//  Created by 宇宣 Chen on 2021/2/13.
//. Reference: https://www.youtube.com/watch?v=a1KuQs5dw24&list=PL5PR3UyfTWvfgx9W8WJ9orQf6N1tx0oxN&index=5

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var context
    // the actual list of todolist items query out
    @FetchRequest(fetchRequest: ToDoListItem.getAllToDoListItems())
        var items: FetchedResults<ToDoListItem>
    
    @State var text: String = ""
    
    
    var body: some View {
        NavigationView{
            List{
                Section(header: Text("New Item")){
                    HStack{
                        TextField("Enter new item...", text: $text)
                        
                        Button(action: {
                            
                            if !text.isEmpty {
                                let newItem =
                                    //managedObjectContext
                                    ToDoListItem(context: context)
                                newItem.name = text
                                newItem.createdAt = Date()
                                
                                do {
                                    try context.save()
                                } catch  {
                                    print(error)
                                }
                                
                                text = ""
                            }
                            
                        }, label: {
                            
                            Text("Save")
                        })
                    }
                }
                Section{
                    ForEach(items) { toDoListItem in
                        VStack(alignment: .leading){
                            Text(toDoListItem.name!)
                                .font(.headline)
                            Text("\(toDoListItem.createdAt!)")
                        }
                    }.onDelete(perform: { indexSet in
                        //which deleted index is selected
                        guard let index = indexSet.first else {
                            return
                        }
                        let itemToDelete = items[index]
                        context.delete(itemToDelete)
                        do {
                            try context.save()
                        }
                        catch{
                            print("error")
                        }
                    })
                }
            }
            .navigationTitle("To Do List")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
