//
//  ImageView.swift
//  SwiftUITutorial
//
//  Created by 1900822 on 2021/6/5.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("paris")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .overlay(
                Color.black
                    .opacity(0.4)
                    .overlay(
                        Text("Paris")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .foregroundColor(.white)
                            .frame(width: 200)
                            .padding(),
                        alignment: .top
                    )
            )
//            .overlay(
//                Rectangle()
//                    .foregroundColor(.black)
//                    .opacity(0.4)
//            )
//            .overlay(
//                Text("If you are lucky enough to have lived in Paris as a young man, then wherever you go for the rest of your life it stays with you, for Paris is a moveable feast.\n\n- Ernest Hemingway")
//                    .fontWeight(.heavy)
//                    .font(.system(.headline, design: .rounded))
//                    .foregroundColor(.white)
//                    .padding()
//                    .background(Color.black)
//                    .cornerRadius(10.0)
//                    .opacity(0.8)
//                    .padding(),
//                alignment: .top
//            )
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
