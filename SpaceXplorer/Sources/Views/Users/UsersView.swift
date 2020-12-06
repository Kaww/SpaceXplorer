//
//  UsersView.swift
//  SpaceXplorer
//
//  Created by KAWRANTIN LE GOFF on 06/12/2020.
//

import SwiftUI

struct UsersView: View {
    var body: some View {
        NavigationView {
            Text("Users")
                .navigationBarTitle("Users", displayMode: .automatic)
        }
    }
}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        UsersView()
    }
}
