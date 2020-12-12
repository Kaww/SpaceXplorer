//
//  Apollo.swift
//  SpaceXplorer
//
//  Created by KAWRANTIN LE GOFF on 05/12/2020.
//

import Foundation
import Apollo
import ApolloWebSocket

class Network {
    static let shared = Network()
    lazy var apollo = ApolloClient(url: URL(string: "https://api.spacex.land/graphql/")!)
}

class ApolloSub {
    static let shared = ApolloSub()
    
    /// A web socket transport to use for subscriptions
    private lazy var webSocketTransport: WebSocketTransport = {
        let url = URL(string: "ws://api.spacex.land/graphql/")!
        let request = URLRequest(url: url)
        return WebSocketTransport(request: request)
    }()
    
    private(set) lazy var store = ApolloStore()
    
    /// An HTTP transport to use for queries and mutations
    private lazy var normalTransport: RequestChainNetworkTransport = {
        let url = URL(string: "https://api.spacex.land/graphql/")!
        return RequestChainNetworkTransport(interceptorProvider: LegacyInterceptorProvider(store: self.store), endpointURL: url)
    }()
    
    /// A split network transport to allow the use of both of the above
    /// transports through a single `NetworkTransport` instance.
    private lazy var splitNetworkTransport = SplitNetworkTransport(
        uploadingNetworkTransport: self.normalTransport,
        webSocketNetworkTransport: self.webSocketTransport
    )
    
    /// Create a client using the `SplitNetworkTransport`.
    private(set) lazy var client = ApolloClient(networkTransport: self.splitNetworkTransport, store: self.store)
}
