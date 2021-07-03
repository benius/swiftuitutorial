//
//  AnimationExercise.swift
//  SwiftUITutorial
//
//  Created by 1900822 on 2021/7/3.
//

import SwiftUI

struct AnimationExercise01: View {
    @State private var submitted = false
    @State private var processing = false
    @State private var done = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: submitted ? 30 : 25)
                .frame(width: submitted ?  250 : 200, height: 60)
                .foregroundColor(done ? Color(.systemRed) : Color(.systemGreen))
            
            if !submitted {
                Text("Submit")
                    .font(.system(.title, design: .rounded))
                    .bold()
                    .foregroundColor(.white)
                    .transition(.move(edge: .top))
            }
            
            if submitted && !done {
                HStack {
                    Circle()
                        .trim(from: 0, to: 0.9)
                        .stroke(Color.white, lineWidth: 3)
                        .frame(width: 30, height: 30)
                        .padding()
                        .rotationEffect(Angle(degrees: processing ? 360 : 0))
                        .animation(Animation.easeOut.repeatForever(autoreverses: false))
                    
                    Text("Processing")
                        .font(.system(.title, design: .rounded))
                        .bold()
                        .foregroundColor(.white)
                }
                .transition(.opacity)
                .onAppear() {
                    startProcessing()
                }
            }
            
            if done {
                Text("Done")
                    .font(.system(.title, design: .rounded))
                    .bold()
                    .foregroundColor(.white)
                    .onAppear() {
                        endProcessing()
                    }
            }
        }
        .animation(.spring())
        .onTapGesture {
            if submitable() {
                self.submitted.toggle()
            }
        }
    }
    
    private func startProcessing() {
        self.processing = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            self.done = true
        }
    }
    
    private func endProcessing() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.submitted = false
            self.processing = false
            self.done = false
        }
    }
    
    private func submitable() -> Bool {
        return !self.submitted
    }
}

struct AnimationExercise_Previews: PreviewProvider {
    static var previews: some View {
        AnimationExercise01()
    }
}
