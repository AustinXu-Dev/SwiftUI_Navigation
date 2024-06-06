//
//  ViewA.swift
//  Austin-Navigation
//
//  Created by Austin Xu on 2024/6/6.
//

import SwiftUI

struct ViewA: View {
    var body: some View {
        Text("This is View A")
        
        NavigationLink(value: "viewB") {
            Text("Go to View B")
        }
        
        //MARK: Check the comments below, clicking the hello will work here
        NavigationLink(destination: Text("Hello")) {
            Text("Go to hello")
        }
        
    }
}

//MARK: A thing to note here is that when you are trying to test the navigation from this view using canvas (or preview)
//MARK: Simply add navigation stack above the preview

//Since the navigation destination is controlled in the ContentView file, clicking Go To View B won't work

//This approach work when there's a simple Navigation Destination
#Preview {
    NavigationStack{
        ViewA()
    }
}
