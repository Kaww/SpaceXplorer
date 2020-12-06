//
//  HistoryViewMode.swift
//  SpaceXplorer
//
//  Created by KAWRANTIN LE GOFF on 06/12/2020.
//

import SwiftUI

class HistoryViewModel: ObservableObject {
    
    public typealias SpaceXHistory = SpaceXHistoryQuery.Data.History
    
    @Published var histories = [SpaceXHistory]()
    
    init() {
        fetchHistories()
    }
    
    private func fetchHistories() {
        Network.shared.apollo.fetch(query: SpaceXHistoryQuery()) { result in
            switch result {
            case .success(let graphQLResult):
                if let historiesResult = graphQLResult.data?.histories {
                    self.histories = self.cleanedHistories(historiesResult)
                }
            case .failure(let error):
                print("ERROR: \(error)")
            }
        }
    }
    
    private func cleanedHistories(_ items: [SpaceXHistory?]) -> [SpaceXHistory] {
        var result = [SpaceXHistory]()
        for item in items {
            if let unwrappedItem = item {
                result.append(unwrappedItem)
            }
        }
        return result
    }
}

extension SpaceXHistoryQuery.Data.History: Identifiable {
    
}
