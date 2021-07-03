//
//  StateExerciseView.swift
//  SwiftUITutorial
//
//  Created by 1900822 on 2021/6/12.
//

import SwiftUI

struct StateExerciseView: View {
    
    @State private var totalCount = 9999
    
    var body: some View {
        Button(action: {
            totalCount += 1
            
            let _ = print("Counting button tapped")
        }, label: {
            // using Circle()
            
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(.red)
                .overlay(
                    Text(String(totalCount))
                        .font(.system(size: 100, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                        
                )
            
            // Using cornerRadius
            
//            Text(String(totalCount))
//                .font(.system(size: 100, weight: .bold, design: .rounded))
//                .minimumScaleFactor(0.5)
//                .lineLimit(1)
//                .frame(width: 200, height: 200, alignment: .center)
//                .foregroundColor(.white)
//                .background(Color.red)
//                .cornerRadius(100)
        })
    }
}

struct StateExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        StateExerciseView()
    }
}
