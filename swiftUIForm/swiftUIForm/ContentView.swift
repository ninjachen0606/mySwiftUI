//
//  ContentView.swift
//  swiftUIForm
//
//  Created by 宇宣 Chen on 2021/2/16.
//  Reference: https://www.youtube.com/watch?v=iWtK4Foy1ZI&list=PL5PR3UyfTWvfgx9W8WJ9orQf6N1tx0oxN&index=15

import SwiftUI

class FormViewModel: ObservableObject {
    @State var firstname = ""
    @State var lastname = ""
    @State var password = ""
    @State var passwordAgain = ""
}

struct ContentView: View {
    
     @StateObject var viewModel = FormViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                Form {
                    Section {
                        TextField("First Name",
                                  text: $viewModel.firstname)
                        TextField("Last Name",
                                  text: $viewModel.lastname)
                    }
                    
                    Section(footer: Text("Your password must be at least 8 characters long.")) {
                        SecureField("Create Password",
                                    text: $viewModel.password)
                        SecureField("Confirm Password",
                                    text: $viewModel.passwordAgain)
                    }
                    
                    Section(header: Text("Mailing Address")) {
                        TextField("Street Address", text: $viewModel.firstname)
                        TextField("City", text: $viewModel.firstname)
                        TextField("State", text: $viewModel.firstname)
                        TextField("Post Code", text: $viewModel.firstname)
                        TextField("Country", text: $viewModel.firstname)
                    }
            
                }
                Divider()
                
                Button(action: {
                    
                }, label: {
                    Text("Continue")
                        .frame(width: 250,
                               height: 50,
                               alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                    
                })
                .padding()
                
                Spacer()
            }
            .navigationTitle("Create Account")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
