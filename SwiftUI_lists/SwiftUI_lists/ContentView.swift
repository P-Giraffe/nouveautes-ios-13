//
//  ContentView.swift
//  SwiftUI_composition
//
//  Created by Maxime Britto on 22/07/2019.
//  Copyright © 2019 Maxime Britto. All rights reserved.
//

import SwiftUI
import Combine


struct ContentView: View {
    @State var hostList:[Host]
    var body: some View {
        NavigationView {
            VStack {
                Image("logo_burger_quiz")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height:100)
                
                List {
                    Section(header: Text("Saison 1")) {
                        ForEach(hostList, id: \.name) { host in
                            NavigationLink(destination: HostDetails(host: host)) {
                                HostRow(host: host)
                            }
                        }
                        .onDelete(perform: deleteHost)
                        .onMove(perform: moveHost)
                    }
                    
                    Section(header: Text("Saison 2")) {
                        ForEach(hostList, id: \.name) { host in
                            NavigationLink(destination: HostDetails(host: host)) {
                                HostRow(host: host)
                            }
                        }
                    }
                }
                EditButton()
                NavigationLink(destination: MapView()) {
                    Text("Se rendre aux studios")
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
    
    func deleteHost(at indexes:IndexSet) {
        hostList.remove(atOffsets: indexes)
    }
    
    func moveHost(from indexes:IndexSet, to destination:Int) {
        hostList.move(fromOffsets: indexes, toOffset: destination)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(hostList: demoHostList)
    }
}
#endif


