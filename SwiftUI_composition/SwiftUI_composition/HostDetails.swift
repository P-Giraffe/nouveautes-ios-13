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
            Image("achabat")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Spacer()
        }.navigationBarTitle("Alain Chabat")
    }
}

#if DEBUG
struct HostDetails_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView { HostDetails() }
    }
}
#endif
