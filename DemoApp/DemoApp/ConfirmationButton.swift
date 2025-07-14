//
//  ConfirmationButton.swift
//  DemoApp
//
//  Created by Elza Ibragimov on 7/11/25.
//

private struct LayoutConstants {
    let buttonLabel: String = "Confirm"
    let backgroundColor: Color = Color.green
    let foregroundColor: Color = Color.white
    let cornerRadius: CGFloat = 8
    let frameWidth: CGFloat = 80
    let frameHeight: CGFloat = 50
}

import SwiftUI

struct ConfirmationButton: View {
    var action: () -> Void
    var body: some View {
        Button(action: action){
            Text(LayoutConstants().buttonLabel)
                .font(.headline)
                .foregroundColor(LayoutConstants().foregroundColor)
                .frame(maxWidth: LayoutConstants().frameWidth, minHeight: LayoutConstants().frameHeight)
                .background(LayoutConstants().backgroundColor)
                .cornerRadius(LayoutConstants().cornerRadius)
            }
        .padding(.horizontal)
    }
}
