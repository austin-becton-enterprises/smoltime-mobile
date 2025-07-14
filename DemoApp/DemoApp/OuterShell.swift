//
//  OuterShell
//  Created by Elza Ibragimov on 7/5/25.
//

import SwiftUI

//layout constants to hold all format variables to refrain

private struct LayoutConstants {
    let percentWidthOfContainer: CGFloat = 0.9
    let percentHeightOfContainer: CGFloat = 0.5
    let spacing: CGFloat = 16
    let cornerRadius: CGFloat = 10
}

struct OuterShell: View {
    var body: some View {
        //geometry reader gets parent container size
        GeometryReader { geometry in
            //create vertical stack center aligned
            VStack(alignment: .center, spacing: LayoutConstants().spacing) {
                //create rectangle frame in place of calendar
                RoundedRectangle(cornerRadius: LayoutConstants().cornerRadius)
                    .fill(Color.blue)
                    .frame(
                        //frame rectangle width to 90% of parent container
                        width: geometry.size.width * LayoutConstants().percentWidthOfContainer,
                        //frame rectangle height to 50% of parent container
                        height: geometry.size.height * LayoutConstants().percentHeightOfContainer
                    )
            }
            .padding()
        }
    }
}

#Preview {
    OuterShell()
}
