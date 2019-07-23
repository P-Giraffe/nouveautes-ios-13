//
//  HostDetails.swift
//  SwiftUI_composition
//
//  Created by Maxime Britto on 22/07/2019.
//  Copyright © 2019 Maxime Britto. All rights reserved.
//

import SwiftUI

struct HostDetails: View {
    @State var displayHelp:Bool = false
    var body: some View {
        VStack {
            Image("achabat")
                .resizable()
                .aspectRatio(contentMode: .fit)
            if displayHelp == true {
                Text("OK, j'appelle le Grand Miam!")
            }
            Spacer()
        }.navigationBarTitle("Alain Chabat")
            .navigationBarItems(trailing: Button(action: { self.displayHelp.toggle() }, label: { Text("Aide")}))
    }
}

#if DEBUG
struct HostDetails_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView { HostDetails() }
    }
}
#endif
