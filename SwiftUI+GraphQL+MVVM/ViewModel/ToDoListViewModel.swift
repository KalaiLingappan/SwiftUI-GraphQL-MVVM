//
//  StationListViewModel.swift
//  SwiftUI+GraphQL+MVVM
//
//  Created by Kalaiprabha L on 28/12/23.
//

import Foundation
import Apollo
import SampleGraphAPI

@MainActor
class ToDoListViewModel: ObservableObject {
    @Published var todosArray: [String] = []
    @Published var error: Error?
    
    func fetchToDos() {
        Network.shared.apollo.fetch(query: ToDosQuery()) { [weak self] result in
            switch result {
            case .success(let graphQLResult):
                self?.todosArray = graphQLResult.data?.todos?.compactMap({$0?.description ?? ""}) ?? []
            case .failure(let error):
                self?.error = error
            }
        }
    }
}
