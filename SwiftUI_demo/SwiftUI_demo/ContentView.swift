//
//  ContentView.swift
//  SwiftUI_demo
//
//  Created by Maxime Britto on 19/07/2019.
//  Copyright © 2019 Maxime Britto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Purple Giraffe FTW!")
                .font(.title)
            
            HStack {
                Image(systemName: "circle")
                Text("Les développeurs de l'ère du mobile")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .environment(\.sizeCategory, .extraSmall)
            ContentView()
                .environment(\.sizeCategory, .extraLarge)
        }.previewLayout(.fixed(width: 500, height: 80))
    }
}
#endif
