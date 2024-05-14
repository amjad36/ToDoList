//
//  RegisterView.swift
//  ToDoList
//
//  Created by Amjad Khan on 02/05/24.
//

import SwiftUI

struct RegisterView: View {
    @ObservedObject var viewModel = RegisterViewModel()

    var body: some View {
        VStack {
            HeaderView(title: "Register",
                       subtitle: "Start organizing todos",
                       rotationDegree: -15, 
                       backgroundColor: .orange)

            Spacer()

            Form {
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundStyle(.red)
                        .font(.footnote)
                }

                TextField("Name", text: $viewModel.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .listRowSeparator(.hidden)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled()

                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.emailAddress)
                    .listRowSeparator(.hidden)
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()

                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .listRowSeparator(.hidden)

                TLButton(title: "Create Account",
                         background: .blue) {
                    viewModel.register()
                }
            }
            .offset(y: -50)
        }
    }
}

#Preview {
    RegisterView()
}
