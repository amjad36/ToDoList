//
//  HeaderView.swift
//  ToDoList
//
//  Created by Amjad Khan on 02/05/24.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let rotationDegree: Double
    let backgroundColor: Color

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(backgroundColor)
                .rotationEffect(Angle(degrees: rotationDegree))

            VStack {
                Text(title)
                    .foregroundStyle(.white)
                    .font(.system(size: 50))
                    .bold()
                Text(subtitle)
                    .foregroundStyle(.white)
                    .font(.system(size: 30))
            }
            .padding(.top, 50)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -150)
    }
}

#Preview {
    HeaderView(title: "To Do List",
               subtitle: "get things done",
               rotationDegree: 15, backgroundColor: .blue)
}
