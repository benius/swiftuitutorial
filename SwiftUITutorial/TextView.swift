//
//  TextView.swift
//  SwiftUITutorial
//
//  Created by 1900822 on 2021/6/5.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text("""
        If you think about it, the current $1800 Intel-based MacBook Pro comes with 16GB of RAM and 512GB of storage at the base price.
        Apple could match those specs for the new 14” base model, you’re only paying $100 for the new redesign and the new display compared to a similarly configured current M1 Macbook Pro, which isn’t bad at all, so the M1 chip in the base 14” is still a possibility.
        """)
            .fontWeight(.bold)
//            .font(.system(.title, design: .rounded))
            .font(.custom("Jetbrains Mono", size: 25))
            .foregroundColor(.blue)
            .multilineTextAlignment(.leading)
            .lineLimit(nil)
            .truncationMode(.middle)
            .lineSpacing(10.0)
            .padding()
//            .rotationEffect(.degrees(45.0), anchor: UnitPoint(x:0, y:0))
            .rotation3DEffect(.degrees(60), axis: (x: 1.0, y: 0.0, z: 0.0))
            .shadow(color: .yellow, radius: 2, x: 0.0, y: 15.0)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
