//
//  ContentView.swift
//  SwiftUI+GraphQL+MVVM
//
//  Created by Kalaiprabha L on 27/12/23.
//

import SwiftUI

struct ToDosView: View {
    @ObservedObject var viewModel = ToDoListViewModel()
    @State var text: String = ""

    var body: some View {
        VStack {
            List(viewModel.todosArray, id: \.self) {
                Text($0)
            }.onAppear {
                fetchToTodos()
            }
        }.padding()
    }
    
    @MainActor func fetchToTodos() {
        viewModel.fetchToDos()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ToDosView()
    }
}
