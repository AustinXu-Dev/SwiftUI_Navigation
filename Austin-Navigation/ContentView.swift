//
//  ContentView.swift
//  Austin-Navigation
//
//  Created by Austin Xu on 2024/6/6.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: The navigation path controls the views on the navigation stack
    @State private var path = NavigationPath()
    
    var body: some View {
        //MARK: Use navigation stack in the base view
        //Note that a view which have navigation stack can't go to another view that have navigation stack
        
        
        //MARK: Make sure path variable is passed into navigation stack
        NavigationStack(path: $path){
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                
                Text("Hello, world!")
                
                //MARK: Navigation destination goes to the view based on the value we provided here
                //MARK: It can be a model, text, and value
                NavigationLink(value: "viewA") {
                    Text("Go to View A")
                }
                NavigationLink(value: "viewB") {
                    Text("Go to View B")
                }
                
                Text("------------")
                
                Text("Example of navigation path here")
                
                NavigationLink(value: "sectionA") {
                    Text("Go to Section A")
                }
            }
            .padding()
            
            .navigationDestination(for: String.self) { value in
                switch value{
                case "viewA":
                    ViewA()
                case "viewB":
                    ViewB()
                    
                case "sectionA":
                    SectionAView(path: $path)
                case "sectionB":
                    SectionBView(path: $path)
                case "sectionC":
                    SectionCView(path: $path)
                    
                default:
                    Text("Default")
                }
            }
            
            .navigationDestination(for: Int.self) { value in
                if value == 1{
                    Text("1")
                }
            }
            //More example Usage
            
        }
    }
}

#Preview {
    ContentView()
}
