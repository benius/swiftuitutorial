//
//  StateView.swift
//  SwiftUITutorial
//
//  Created by 1900822 on 2021/6/12.
//

import SwiftUI

struct StateView: View {
    
    @State private var isPlaying = false
    
    var body: some View {
        Button(action: {
            self.isPlaying.toggle()
            
            let _ = print("Play button tapped")
        }, label: {
            Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
                .font(.system(size: 150))
                .foregroundColor(isPlaying ? .red : .green)
        })
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
