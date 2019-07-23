//
//  HostDetails.swift
//  SwiftUI_composition
//
//  Created by Maxime Britto on 22/07/2019.
//  Copyright © 2019 Maxime Britto. All rights reserved.
//

import SwiftUI

struct HostDetails: View {
    var body: some View {
        VStack {
            Text("Alain Chabat")
                .font(.largeTitle)
            Image("achabat")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Spacer()
        }
    }
}

#if DEBUG
struct HostDetails_Previews: PreviewProvider {
    static var previews: some View {
        HostDetails()
    }
}
#endif
