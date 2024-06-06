//
//  SectionCView.swift
//  Austin-Navigation
//
//  Created by Austin Xu on 2024/6/6.
//

import SwiftUI

struct SectionCView: View {
    @Binding var path: NavigationPath

    var body: some View {
        Text("This is Section C View")
        
        Button {
            // Remove only one view and go back
            // Use this in custom back button
            path.removeLast()
        } label: {
            Text("Go back one view")
        }
        
        Button {
            // Go to root view
            path = NavigationPath("")
        } label: {
            Text("Go to root view")
        }

    }
}

#Preview {
    SectionCView(path: .constant(NavigationPath()))
}
