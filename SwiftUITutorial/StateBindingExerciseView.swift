//
//  StateBindingExerciseView.swift
//  SwiftUITutorial
//
//  Created by 1900822 on 2021/6/12.
//

import SwiftUI

struct StateBindingExerciseView: View {
    @State private var firstCounter = 1
    @State private var secondCounter = 1
    @State private var thirdCounter = 1
    
    var body: some View {
        VStack(alignment: .center, spacing: 50) {
            Text("\(firstCounter + secondCounter + thirdCounter)")
                .font(.system(size: 200, weight: .bold, design: .rounded))
                .minimumScaleFactor(0.5)
            
            HStack {
                CounterButton(counter: $firstCounter, color: .blue, circleSize: 100, fontSize: 60)
                CounterButton(counter: $secondCounter, color: .green, circleSize: 100, fontSize: 60)
                CounterButton(counter: $thirdCounter, color: .red, circleSize: 100, fontSize: 60)
            }
            .padding()
        }
    }
}



struct StateBindingExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        StateBindingExerciseView()
    }
}
