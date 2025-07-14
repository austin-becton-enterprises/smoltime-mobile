//
//  ContentView.swift
//  DemoApp
//
//  Created by Austin Becton on 6/27/25.
//

import SwiftUI

private struct LayoutConstants {
    let percentWidthOfContainer: CGFloat = 0.9
    let percentHeightOfContainer: CGFloat = 0.5
    let buttonOffsetX: CGFloat = 120
    let buttonOffsetY: CGFloat = 8
    
}

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            // Get parent container width and height
            let shellWidth = geometry.size.width * LayoutConstants().percentWidthOfContainer
            let shellHeight = geometry.size.height * LayoutConstants().percentHeightOfContainer

            VStack() {
                ZStack(alignment: .topLeading) {
                    OuterShell()
                    ConfirmationButton {}
                    //position offset x and y to stand bottom right corner of shell
                        .offset(x: shellWidth - LayoutConstants().buttonOffsetX, y: shellHeight + LayoutConstants().buttonOffsetY)
                }
            }
            .padding()
        }
    }
}
#Preview {
    ContentView()
}
