//
//  ProfileView.swift
//  ToDoList
//
//  Created by Amjad Khan on 10/05/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject private var viewModel = ProfileViewModel()

    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "person.circle")
                    .font(.system(size: 100))
                    .foregroundStyle(.cyan)

                VStack(alignment: .leading) {
                    Text("Name:")
                    Text("Amjad Khan")
                }

                VStack(alignment: .leading) {
                    Text("Email:")
                    Text("khan.amjad36@gmail.com")
                }

                VStack(alignment: .leading) {
                    Text("Member Since:")
                    Text("Apr 29, 2023 at 3:57 PM")
                }

                TLButton(title: "Sign Out", background: .red) {
                    viewModel.logout()
                }
                .frame(width: 100, height: 40)
            }
            .backgroundStyle(.red)
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
