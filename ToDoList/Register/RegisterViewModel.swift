//
//  RegisterViewModel.swift
//  ToDoList
//
//  Created by Amjad Khan on 02/05/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class RegisterViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var errorMessage: String = ""

    init() {}

    func register() {
        guard validate() else {
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            guard let uid = result?.user.uid else {
                return
            }
            
            self?.insertUserRecord(id: uid)
        }
    }

    private func insertUserRecord(id: String) {
        let newUser = User(id: id,
                           name: name, 
                           email: email, 
                           joined: Date().timeIntervalSince1970)

        let db = Firestore.firestore()

        db.collection("user")
            .document(id)
            .setData(newUser.asDictionary())
    }

    private func validate() -> Bool {
        errorMessage = ""

        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all fields"
            return false
        }

        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please type valid email"
            return false
        }

        guard password.count >= 6 else {
            errorMessage = "Password must be more than 6 characters"
            return false
        }

        return true
    }

}
