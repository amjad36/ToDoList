//
//  LoginViewModel.swift
//  ToDoList
//
//  Created by Amjad Khan on 02/05/24.
//

import Foundation
import FirebaseAuth

class LoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String  = ""
    @Published var errorMessage: String = ""

    init() {}

    func login() {
        guard validate() else {
            return
        }

        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            guard let uid = result?.user.uid else {
                return
            }
            debugPrint("User login Id: \(uid)")
        }
    }

    private func validate() -> Bool {
        errorMessage = ""

        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all fields"
            return false
        }

        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please type valid email"
            return false
        }
        
        return true
    }
}
