//
//  LoginView.swift
//  ToDoList
//
//  Created by Amjad Khan on 02/05/24.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String  = ""

    var body: some View {
        NavigationView {
            VStack {
                HeaderView()

                Spacer()

                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.emailAddress)
                        .listRowSeparator(.hidden)
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .listRowSeparator(.hidden)

                    Button {
                        loginButtonPressed()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.blue)

                            Text("Login")
                                .background(.blue)
                                .foregroundStyle(.white)
                        }
                    }
                }

                VStack {
                    Text("New Aaround here?")
                    NavigationLink("Create An Account") {
                        RegisterView()
                    }
                }
                .padding(.bottom, 50)
            }
        }
    }

    func loginButtonPressed() {

    }

    func registerButtonPressed() {

    }
}

#Preview {
    LoginView()
}
