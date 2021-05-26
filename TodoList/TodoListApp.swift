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
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
        }
    }
}
