//
//  LaunchesView.swift
//  SpaceXplorer
//
//  Created by KAWRANTIN LE GOFF on 06/12/2020.
//

import SwiftUI

struct LaunchesView: View {
    var body: some View {
        NavigationView {
            Text("Launches")
                .navigationBarTitle("Launches", displayMode: .automatic)
        }
    }
}

struct LaunchesView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchesView()
    }
}
