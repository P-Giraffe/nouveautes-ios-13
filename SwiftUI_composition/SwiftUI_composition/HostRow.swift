//
//  HostRow.swift
//  SwiftUI_composition
//
//  Created by Maxime Britto on 22/07/2019.
//  Copyright © 2019 Maxime Britto. All rights reserved.
//

import SwiftUI

struct HostRow: View {
    var host:Host
    var body: some View {
        HStack {
            Image(host.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .clipped()
            
            Text(host.name)
            Spacer()
        }
    }
}

#if DEBUG
struct HostRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HostRow(host: Host(name: "Alain Chabat", imageName: "achabat", bio: ""))
            HostRow(host: Host(name: "Marina Foïs", imageName: "mfois", bio: ""))
        }.previewLayout(.fixed(width: 200, height: 50))
    }
}
#endif
