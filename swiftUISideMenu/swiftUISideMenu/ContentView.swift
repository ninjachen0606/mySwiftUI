//
//  ContentView.swift
//  swiftUISideMenu
//
//  Created by 宇宣 Chen on 2021/2/18.
//  Reference: https://www.youtube.com/watch?v=iOZb3r2mR20&list=PL5PR3UyfTWvfgx9W8WJ9orQf6N1tx0oxN&index=26

import SwiftUI


struct MenuItem: Identifiable {
    var id =  UUID()
    let text: String
    let imageName: String
    let handler: () -> Void = {
        print("Tapped Item")
    }
}

struct MenuContent: View {
    
    let items: [MenuItem] = [
        
        MenuItem(text: "Home", imageName: "house"),
        MenuItem(text: "Profile", imageName: "person.circle"),
        MenuItem(text: "Activity", imageName: "gear"),
    ]
    
    var body: some View {
        ZStack {
            Color(UIColor(red: 43/255.0,
                          green: 40/255.0,
                          blue: 74/255.0, alpha: 1))
            
            VStack(alignment: .leading, spacing: 0) {
                ForEach(items) { item in
                    HStack{
                        
                        Image(systemName: item.imageName)
                            .resizable()
                            .foregroundColor(.white)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 32, height: 32, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text(item.text)
                            .foregroundColor(.white)
                            .bold()
                            .font(.system(size: 22))
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        Spacer()
                    }
                    .onTapGesture {
                        print("\(item.imageName)")
                    }
                    .padding()
                    Divider()
                    
                }
                Spacer()
                
            }
            .padding(.top,25)
            
        }
    }
    
}

struct SideMenu: View {
    let width:CGFloat
    let menuOpened: Bool
    let toggleMenu: () -> Void
    
    var body: some View {
        ZStack {
            // Dimmed background view
            GeometryReader { _ in
                EmptyView()
            }
            .background(Color.gray.opacity(0.15))
            .opacity(self.menuOpened ? 1:0)
            .animation(Animation.easeIn.delay(0.25))
            .onTapGesture {
                self.toggleMenu()
            }
            
            HStack {
                MenuContent()
                    .frame(width: width)
                    .offset(x: menuOpened ? 0 : -width)
                    .animation(.default)
                Spacer()
            }
        }
    }
}


struct ContentView: View {
    
    @State var menuOpened = false
    
    var body: some View {
        ZStack {
            if !menuOpened {
                
                Button(action: {
                    //open menu
                    self.menuOpened.toggle()
                }, label: {
                    Text("Open Menu")
                        .bold()
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color(.systemBlue))
                })
            }
            
            SideMenu(width: UIScreen.main.bounds.width/1.6, menuOpened: menuOpened, toggleMenu: toggleMenu)
            
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    
    func toggleMenu() {
        menuOpened.toggle()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
