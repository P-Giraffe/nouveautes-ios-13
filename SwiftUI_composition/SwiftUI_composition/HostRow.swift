//
//  HostRow.swift
//  SwiftUI_composition
//
//  Created by Maxime Britto on 22/07/2019.
//  Copyright © 2019 Maxime Britto. All rights reserved.
//

import SwiftUI

struct HostRow: View {
    var body: some View {
        HStack {
            Image("achabat")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .clipped()
            
            Text("Alain Chabat")
            Spacer()
        }
    }
}

#if DEBUG
struct HostRow_Previews: PreviewProvider {
    static var previews: some View {
        HostRow().previewLayout(.fixed(width: 200, height: 50))
    }
}
#endif
