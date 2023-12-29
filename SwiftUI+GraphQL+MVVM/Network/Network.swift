//
//  Network.swift
//  SwiftUI+GraphQL+MVVM
//
//  Created by Kalaiprabha L on 29/12/23.
//

import Foundation
import Apollo

class Network {
    static let shared = Network()
    
    private init() {}
    
    private(set) lazy var apollo = ApolloClient(url: URL(string: "https://api.mocki.io/v2/c4d7a195/graphql")!)
}
