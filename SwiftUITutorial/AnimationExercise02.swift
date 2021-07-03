//
//  AnimationExercise02.swift
//  SwiftUITutorial
//
//  Created by 1900822 on 2021/7/3.
//

import SwiftUI

struct AnimationExercise02: View {
    @State private var show = false
    @State private var currentCardIndex = 0
    
    private var cardViews = [
        CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng"),
        CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos"),
        CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan"),
        CardView(image: "natural-language-api", category: "iOS", heading: "What's New in Natural Language API", author: "Sai Kambampati")
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Reading List")
                .font(.system(size: 70.0, weight: .black, design: .rounded))
                .padding([.top, .horizontal])
            
            if !show {
                cardViews[currentCardIndex]
                    .transition(.scaleDownAndUp)
            }
            
            if show {
                cardViews[currentCardIndex]
                    .transition(.scaleDownAndUp) 
            }
            
            Spacer()
        }
        .onTapGesture {
            self.currentCardIndex = (self.currentCardIndex + 1) % cardViews.count
            
            withAnimation(Animation.spring()) {
                self.show.toggle()
            }
        }
    }
}

struct AnimationExercise02_Previews: PreviewProvider {
    static var previews: some View {
        AnimationExercise02()
    }
}

extension AnyTransition {
    static var scaleDownAndUp: AnyTransition {
        AnyTransition.offset(y: 600).combined(with: .scale(scale: 0, anchor: .bottom)).combined(with: .opacity)
    }
    
    static var slideInAndOut: AnyTransition {
        AnyTransition.asymmetric(
            insertion: AnyTransition.offset(y: 800).combined(with: .opacity).combined(with: .scale(scale: 0, anchor: .trailing)),
            removal: AnyTransition.offset(y: -800).combined(with: .opacity).combined(with: .scale(scale: 0, anchor: .leading))
        )
    }
}
