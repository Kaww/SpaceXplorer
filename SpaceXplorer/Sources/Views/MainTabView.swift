//
//  ContentView.swift
//  SpaceXplorer
//
//  Created by KAWRANTIN LE GOFF on 05/12/2020.
//

import SwiftUI

struct MainTabView: View {
    @State var selection = 1
    
    var body: some View {
        TabView(selection: $selection) {
            HistoryView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("History")
                }
                .tag(1)
        }
        .accentColor(.red)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
