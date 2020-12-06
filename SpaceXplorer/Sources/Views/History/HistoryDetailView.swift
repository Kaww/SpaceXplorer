//
//  HistoryDetailView.swift
//  SpaceXplorer
//
//  Created by KAWRANTIN LE GOFF on 05/12/2020.
//

import SwiftUI

struct HistoryDetailView: View {
    @State var history: HistoryViewModel.SpaceXHistory
    
    var body: some View {
        VStack {
            Text(history.title ?? "no title")
                .font(.title)
            Text(history.details ?? "No more details")
            Text(history.eventDateUnix ?? "no date")
            Spacer()
        }
//        .navigationTitle(history.title ?? "no title")
    }
}

struct HistoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HistoryDetailView(history: HistoryViewModel.SpaceXHistory(id: "19", title: "First Block 5 Launch", details: "The Bangabandhu Satellite-1 mission served as the first flight of Falcon 9 Block 5, the final substantial upgrade to SpaceX’s Falcon 9 launch vehicle. Falcon 9 Block 5 is designed to be capable of 10 or more flights with very limited refurbishment as SpaceX continues to strive for rapid reusability and extremely high reliability.", eventDateUnix: "1526069640"))
        }
    }
}
