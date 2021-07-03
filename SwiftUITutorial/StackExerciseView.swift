//
//  StackExerciseView.swift
//  SwiftUITutorial
//
//  Created by 1900822 on 2021/6/6.
//

import SwiftUI

struct StackExerciseView: View {
    var body: some View {
        ZStack {
            PricingView(title: "Basic", price: "$9", textColor: .white, bgColor: .purple, icon: "star.circle")
                .padding()
                .offset(x: 0, y: 180)

            PricingView(title: "Pro", price: "$19", textColor: .black, bgColor: Color(red: 254/255, green: 185/255, blue: 58/255), icon: "sun.max")
                .padding()
                .scaleEffect(0.95)
            
            PricingView(title: "Team", price: "$299", textColor: .white, bgColor: .black, icon: "wand.and.rays")
                .padding()
                .scaleEffect(0.9)
                .offset(x: 0, y: -180)

        }
        .padding()
    }
}

struct StackExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        StackExerciseView()
    }
}
