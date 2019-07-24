//
//  ContentView.swift
//  SwiftUI_composition
//
//  Created by Maxime Britto on 22/07/2019.
//  Copyright © 2019 Maxime Britto. All rights reserved.
//

import SwiftUI
import Combine

class UserSettings : BindableObject {
    
    var willChange = PassthroughSubject<Void,Never>()
    var hasEnabledDeathBurgerMode = false {
        didSet {
            willChange.send()
        }
    }
}

struct ContentView: View {
    @Environment(\.colorScheme) var mode
    @ObjectBinding var userSettings = UserSettings()
    @State var host = hostList[0]
    var body: some View {
        NavigationView {
            VStack {
                Image("logo_burger_quiz")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height:100)
                NavigationLink(destination: HostDetails(host: $host)) {
                    HostRow(host: host)
                }.buttonStyle(.plain)
                
                if mode == .dark {
                    if userSettings.hasEnabledDeathBurgerMode {
                        Image("burger-de-la-mort").resizable()
                    } else {
                        Button(action:{self.userSettings.hasEnabledDeathBurgerMode = true}) {
                            Image(systemName: "smiley")
                        }
                    }
                }
                Spacer()
            }
            .navigationBarTitle("")
                .navigationBarHidden(true)
        }
    }
    
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif


