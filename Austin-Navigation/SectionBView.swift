//
//  SectionBView.swift
//  Austin-Navigation
//
//  Created by Austin Xu on 2024/6/6.
//

import SwiftUI

struct SectionBView: View {
    @Binding var path: NavigationPath

    var body: some View {
        Text("This is Section B View")
        
        Button {
            // Remove only one view and go back
            // Use this in custom back button
            path.removeLast()
        } label: {
            Text("Go back one view")
        }
        
        NavigationLink(value: "sectionC") {
            Text("Go to Section C")
        }
        
        
    }
}

#Preview {
    SectionBView(path: .constant(NavigationPath()))
}
