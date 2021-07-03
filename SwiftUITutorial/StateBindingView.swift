//
//  StateBindingView.swift
//  SwiftUITutorial
//
//  Created by 1900822 on 2021/6/12.
//

import SwiftUI

struct StateBindingView: View {
    
    @State private var counter = 1
    
    var body: some View {
        VStack {
            CounterButton(counter: $counter, color: .blue, circleSize: 200, fontSize: 100)
            CounterButton(counter: $counter, color: .green, circleSize: 200, fontSize: 100)
            CounterButton(counter: $counter, color: .red, circleSize: 200, fontSize: 100)
        }
    }
}

struct CounterButton: View {
    @Binding var counter: Int
    
    var color: Color
    
    var circleSize: CGFloat
    
    var fontSize: CGFloat
    
    var body: some View {
        Button(action: {
            self.counter += 1
        }, label: {
            Circle()
                .frame(width: circleSize, height: circleSize)
                .foregroundColor(color)
                .overlay(
                    Text("\(counter)")
                        .font(.system(size: fontSize, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                )
        })
    }
}

struct StateBindingView_Previews: PreviewProvider {
    static var previews: some View {
        StateBindingView()
    }
}
