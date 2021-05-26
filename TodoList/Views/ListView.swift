//
//  ListView.swift
//  TodoList
//
//  Created by Ankish Khatri on 26/05/21.
//

import SwiftUI

struct ListView: View {
    @State var items: [String] = [
        "This is the first title",
        "This is the second Title"
    ]
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
            
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView())
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}

