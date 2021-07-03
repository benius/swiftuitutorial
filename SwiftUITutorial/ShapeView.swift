//
//  ShapeView.swift
//  SwiftUITutorial
//
//  Created by 1900822 on 2021/6/14.
//

import SwiftUI

struct ShapeView: View {
    var body: some View {
//        RectangleFill()
//        RectangleStroke()
//        QuadFill()
//        QuadFillWithStroke()
//        ArcFill()
        PieFill()
    }
}

struct RectangleFill: View {
    var body: some View {
        Path() { path in
            path.move(to: CGPoint(x: 20, y: 20))
            path.addLine(to: CGPoint(x: 300, y: 20))
            path.addLine(to: CGPoint(x: 300, y: 200))
            path.addLine(to: CGPoint(x: 20, y: 200))
            path.closeSubpath()
        }
        .fill(Color.green)
    }
}

struct RectangleStroke: View {
    var body: some View {
        Path() { path in
            path.move(to: CGPoint(x: 20, y: 20))
            path.addLine(to: CGPoint(x: 300, y: 20))
            path.addLine(to: CGPoint(x: 300, y: 200))
            path.addLine(to: CGPoint(x: 20, y: 200))
            path.closeSubpath()
        }
        .stroke(Color.green, lineWidth: 10)
    }
}

struct QuadFill: View {
    var body: some View {
        Path() { path in
            path.move(to: CGPoint(x: 20, y: 60))
            path.addLine(to: CGPoint(x: 40, y: 60))
            path.addQuadCurve(to: CGPoint(x: 210, y: 60), control: CGPoint(x: 125, y: 0))
            path.addLine(to: CGPoint(x: 230, y: 60))
            path.addLine(to: CGPoint(x: 230, y: 100))
            path.addLine(to: CGPoint(x: 20, y: 100))
        }
        .fill(Color.purple)
    }
}

struct QuadFillWithStroke: View {
    var body: some View {
        ZStack {
            Path { path in
                path.move(to: CGPoint(x: 20, y: 60))
                path.addLine(to: CGPoint(x: 40, y: 60))
                path.addQuadCurve(to: CGPoint(x: 210, y: 60), control: CGPoint(x: 125, y: 0))
                path.addLine(to: CGPoint(x: 230, y: 60))
                path.addLine(to: CGPoint(x: 230, y: 100))
                path.addLine(to: CGPoint(x: 20, y: 100))
            }
            .fill(Color.purple)
            
            Path { path in
                path.move(to: CGPoint(x: 20, y: 60))
                path.addLine(to: CGPoint(x: 40, y: 60))
                path.addQuadCurve(to: CGPoint(x: 210, y: 60), control: CGPoint(x: 125, y: 0))
                path.addLine(to: CGPoint(x: 230, y: 60))
                path.addLine(to: CGPoint(x: 230, y: 100))
                path.addLine(to: CGPoint(x: 20, y: 100))
                path.closeSubpath()
            }
            .stroke(Color.black, lineWidth: 5)
        }
    }
}

struct ArcFill: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 200, y: 200))
            path.addArc(center: CGPoint(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 0.0), endAngle: Angle(degrees: 90.0), clockwise: true)
        }
        .fill(Color.green)
    }
}

struct PieFill: View {
    var body: some View {
        ZStack {
            Path {path in
                path.move(to: CGPoint(x: 187, y: 187))
                path.addArc(center: CGPoint(x: 187, y: 187), radius: 150, startAngle: Angle(degrees: 0.0), endAngle: Angle(degrees: 190.0), clockwise: true)
            }
            .fill(Color(.systemYellow))
            
            Path {path in
                path.move(to: CGPoint(x: 187, y: 187))
                path.addArc(center: CGPoint(x: 187, y: 187), radius: 150, startAngle: Angle(degrees: 190), endAngle: Angle(degrees: 110), clockwise: true)
            }
            .fill(Color(.systemTeal))
            
            Path {path in
                path.move(to: CGPoint(x: 187, y: 187))
                path.addArc(center: CGPoint(x: 187, y: 187), radius: 150, startAngle: Angle(degrees: 110.0), endAngle: Angle(degrees: 90.0), clockwise: true)
            }
            .fill(Color(.systemBlue))
            
            Path {path in
                path.move(to: CGPoint(x: 187, y: 187))
                path.addArc(center: CGPoint(x: 187, y: 187), radius: 150, startAngle: Angle(degrees: 90.0), endAngle: Angle(degrees: 360.0), clockwise: true)
            }
            .fill(Color(.systemPurple))
        }
    }
}

struct ShapeView_Previews: PreviewProvider {
    static var previews: some View {
        ShapeView()
    }
}
