//
//  ButtonExerciseView.swift
//  SwiftUITutorial
//
//  Created by 1900822 on 2021/6/12.
//

import SwiftUI

struct ButtonExerciseView: View {
    var body: some View {
        Button(action: {
            let _ = print("plus button tapped")
        }, label: {
            Image(systemName: "plus")
                .font(.system(size: 60))
        })
        .buttonStyle(PlusButtonStyle())
    }
}

struct PlusButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
            .foregroundColor(.white)
            .background(Color.purple)
            .cornerRadius(50)
            .rotationEffect(configuration.isPressed ? .degrees(135) : .zero)
    }
}

struct ButtonExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonExerciseView()
    }
}
