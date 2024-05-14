//
//  ContentView.swift
//  ToDoList
//
//  Created by Amjad Khan on 01/05/24.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var viewModel = MainViewModel()

    var body: some View {
        if viewModel.isSignedIn && !viewModel.currentUserId.isEmpty {
            TabView {
                ToDoListView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }

                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.circle")
                    }
            }

        } else {
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
