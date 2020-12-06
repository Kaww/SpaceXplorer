//
//  HistoryView.swift
//  SpaceXplorer
//
//  Created by KAWRANTIN LE GOFF on 05/12/2020.
//

import SwiftUI

// MARK: History View
struct HistoryView: View {
    
    @ObservedObject var viewModel = HistoryViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                ScrollView(showsIndicators: false) {
                    Color.clear.padding(.bottom, 15)
                    
                    LazyVStack(spacing: 12) {
                        ForEach(viewModel.histories) { history in
                            HistoryItemView(history: history)
                        }
                    }
                    
                    Color.clear.padding(.bottom, 20)
                }
                .padding(.top, 1)
                .navigationBarTitle("History", displayMode: .automatic)
            }
            
            if viewModel.histories.isEmpty {
                ProgressView("Loading")
                    .progressViewStyle(CircularProgressViewStyle())
            }
        }
    }
}

// MARK: History Item View
struct HistoryItemView: View {
    
    @State var history: HistoryViewModel.SpaceXHistory
    
    var body: some View {
        NavigationLink(destination: HistoryDetailView(history: history)) {
            
            VStack(spacing: 8) {
                HStack(spacing: 5) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(history.title ?? "...")
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        if let details = history.details {
                            Text(details.preview())
                                .font(.body)
                                .foregroundColor(Color("SecondaryTextColor"))
                        }
                    }

                    Spacer()
                    
                    Image(systemName: "chevron.compact.right")
                        .font(.system(size: 30))
                }
                if let unixDateString = history.eventDateUnix, let dateString = unixDateString.dateFromUnixFormat() {
                    HStack {
                        Spacer()
                        Text(dateString)
                            .font(.system(size: 12, weight: .bold))
                            .opacity(0.7)
                    }
                }
            }
            .padding([.vertical, .trailing], 10)
            .padding(.leading, 15)
            .background(Color("SecondaryBackground"))
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))

        }
        .padding(.horizontal, 15)
    }
}

// MARK: Preview
struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
