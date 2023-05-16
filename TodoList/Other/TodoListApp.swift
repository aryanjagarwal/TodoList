//
//  TodoListApp.swift
//  TodoList
//
//  Created by Aryan Jagarwal on 16/05/23.
//

import FirebaseCore
import SwiftUI

@main
struct TodoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
