//
//  HeaderView.swift
//  ToDoList
//
//  Created by Amjad Khan on 02/05/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(.pink)
                .rotationEffect(Angle(degrees: 15))

            VStack {
                Text("To Do List")
                    .foregroundStyle(.white)
                    .font(.system(size: 50))
                    .bold()
                Text("get things done")
                    .foregroundStyle(.white)
                    .font(.system(size: 30))
            }
            .padding(.top, 20)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        .offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
