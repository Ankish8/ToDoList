//
//  TodoListApp.swift
//  TodoList
//
//  Created by Ankish Khatri on 26/05/21.
//
/*
 MVVM Architecture
 */

import SwiftUI

@main
struct TodoListApp: App {
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
