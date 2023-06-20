//
//  ButtonView.swift
//  Right on Target SwiftUI
//
//  Created by Kate Kashko on 19.06.2023.
//

import SwiftUI

struct ButtonView: View {
    
    let title: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title3)
                .foregroundColor(.cyan)
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Some Action", color: .cyan, action: {})
    }
}
