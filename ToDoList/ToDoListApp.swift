//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Amjad Khan on 01/05/24.
//

import SwiftUI

@main
struct ToDoListApp: App {
    // Register app delegate for Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
