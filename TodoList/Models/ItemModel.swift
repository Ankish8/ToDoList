//
//  ItemModel.swift
//  TodoList
//
//  Created by Ankish Khatri on 26/05/21.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
