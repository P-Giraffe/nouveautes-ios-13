//
//  HostDetails.swift
//  SwiftUI_composition
//
//  Created by Maxime Britto on 22/07/2019.
//  Copyright © 2019 Maxime Britto. All rights reserved.
//

import SwiftUI

struct HostDetails: View {
    @Binding var host:Host
    @State var displayHelp:Bool = false
    var body: some View {
        VStack {
            Image(host.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            if displayHelp == true {
                Text("OK, j'appelle le Grand Miam!")
            }
            Button(action:{self.host.name = self.host.name.uppercased()}) {
                Text("Majuscule")
            }
            Spacer()
        }.navigationBarTitle(host.name)
            .navigationBarItems(trailing: Button(action: { self.displayHelp.toggle() }, label: { Text("Aide")}))
    }
}

#if DEBUG
struct HostDetails_Previews: PreviewProvider {
    @State static var host = hostList[0]
    static var previews: some View {
        NavigationView { HostDetails(host:$host) }
    }
}
#endif
