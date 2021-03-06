//
//  ListViewModel.swift
//  TodoList
//
//  Created by Ankish Khatri on 26/05/21.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = []
    init() {
        getItems()
    }
        func getItems() {
            let newItems = [
                ItemModel(title: "This is the first title", isCompleted: false),
                ItemModel(title: "This is the second title", isCompleted: true),
                ItemModel(title: "This is the third title", isCompleted: false)
            ]
            items.append(contentsOf: newItems)
        }
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}
