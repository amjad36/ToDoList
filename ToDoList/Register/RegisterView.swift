//
//  RegisterView.swift
//  ToDoList
//
//  Created by Amjad Khan on 02/05/24.
//

import SwiftUI

struct RegisterView: View {
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""

    var body: some View {
        VStack {
            HeaderView(title: "Register",
                       subtitle: "Start organizing todos",
                       rotationDegree: -15, 
                       backgroundColor: .orange)

            Spacer()

            Form {
                TextField("Name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .listRowSeparator(.hidden)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled()

                TextField("Email Address", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.emailAddress)
                    .listRowSeparator(.hidden)
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()

                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .listRowSeparator(.hidden)

                TLButton(title: "Create Account",
                         background: .blue) {
                    createAccount()
                }
            }
            .offset(y: -50)
        }
    }

    func createAccount() {

    }
}

#Preview {
    RegisterView()
}
