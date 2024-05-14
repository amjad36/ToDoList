//
//  ProfileViewModel.swift
//  ToDoList
//
//  Created by Amjad Khan on 10/05/24.
//

import Foundation
import FirebaseAuth

class ProfileViewModel: ObservableObject {

    init() { }

    func logout() {
        do {
            try Auth.auth().signOut()
        }
        catch {
            debugPrint("Failed to logout")
        }
    }
}
