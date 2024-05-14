//
//  TLButton.swift
//  ToDoList
//
//  Created by Amjad Khan on 03/05/24.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void

    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(background)

                Text(title)
                    .background(.blue)
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    TLButton(title: "Title",
             background: .blue) {
        // handle action
    }
}
