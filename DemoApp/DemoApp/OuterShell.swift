//
//  OuterShell
//  Created by Elza Ibragimov on 7/5/25.
//

import SwiftUI

struct OuterShell: View {
    var body: some View {
        //geometry reader gets parent container size
        GeometryReader { geometry in
            //create vertical stack center aligned
            VStack(alignment: .center, spacing: 16) {
                //create rectangle frame in place of calendar
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
                    .frame(
                        //frame rectangle width to 90% of parent container
                        width: geometry.size.width * 0.9,
                        //frame rectangle height to 50% of parent container
                        height: geometry.size.height * 0.5
                    )
            }
            //expand stack to max width and max height of parent container
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity)
            .padding()
        }
    }
}

#Preview {
    OuterShell()
}
