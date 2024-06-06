//
//  SectionAView.swift
//  Austin-Navigation
//
//  Created by Austin Xu on 2024/6/6.
//

import SwiftUI

struct SectionAView: View {
    @Binding var path: NavigationPath
    var body: some View {
        Text("This is Section A View")
        
        Button {
            // Remove only one view and go back
            // Use this in custom back button
            path.removeLast()
        } label: {
            Text("Go back one view")
        }
        
        NavigationLink(value: "sectionB") {
            Text("Go to Section B")
        }
        
        
    }
}

#Preview {
    SectionAView(path: .constant(NavigationPath()))
}
