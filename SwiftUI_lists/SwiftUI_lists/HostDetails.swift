//
//  HostDetails.swift
//  SwiftUI_composition
//
//  Created by Maxime Britto on 22/07/2019.
//  Copyright © 2019 Maxime Britto. All rights reserved.
//

import SwiftUI

struct HostDetails: View {
    var host:Host
    @State var displayHelp:Bool = false
    @State var shouldPickImage = false
    @State var pickedImage:Image? = nil
    var body: some View {
        VStack {
            (pickedImage == nil ? Image(host.imageName) : pickedImage!)
                .resizable()
                .aspectRatio(contentMode: .fit)
            if displayHelp == true {
                Text("OK, j'appelle le Grand Miam!")
            }
            Button(action: {
                self.shouldPickImage = true
            }) {
                Text("Choisir image")
            }
            
            Spacer()
        }
        .navigationBarTitle(host.name)
        .navigationBarItems(trailing: Button(action: { self.displayHelp.toggle() }, label: { Text("Aide")}))
        .sheet(isPresented: $shouldPickImage) {
            ImagePicker(shouldDisplayPicker: self.$shouldPickImage, pickedImage: self.$pickedImage)
        }
    }
}

#if DEBUG
struct HostDetails_Previews: PreviewProvider {
    @State static var host = demoHostList[0]
    static var previews: some View {
        NavigationView { HostDetails(host:host) }
    }
}
#endif
